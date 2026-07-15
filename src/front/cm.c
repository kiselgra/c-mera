#define _GNU_SOURCE
#include <string.h>
#include <stdlib.h>
#include <stdio.h>
#include <stdbool.h>
#include <errno.h>
#include <unistd.h>

/* Legacy spellings that predate the cm-<name> convention. Only entries
 * whose canonical binary name doesn't already match `cm-<argv[1]>`
 * belong here -- this table exists for backwards-compatible aliases,
 * not for registering backends. A new backend needs no entry: dropping
 * a `cm-wasm` executable anywhere on $CM_EXEC_PATH or $PATH is enough
 * to make `cm wasm` work. */
struct alias { const char *name, *canonical; };
static const struct alias aliases[] = {
	{ "c++",    "cm-cxx" },
	{ "opencl", "cm-opencl" },
};

/* Exec cm-<name>, looking first in $CM_EXEC_PATH (falling back to the
 * compiled-in BINDIR), then in $PATH -- the same two-tier lookup git
 * uses to resolve git-<verb>. Does not return on success. */
static void exec_generator(const char *canonical, char **argv)
{
	const char *exec_path = getenv("CM_EXEC_PATH");
	char *prog = NULL;

	if (!exec_path) exec_path = BINDIR;
	if (asprintf(&prog, "%s/%s", exec_path, canonical) <= 0) {
		fprintf(stderr, "Allocation error, cannot start generator.\n");
		exit(1);
	}

	if (access(prog, X_OK) == 0)
		execv(prog, argv);
	else
		execvp(canonical, argv); /* fall back to $PATH, like git-<verb> */

	fprintf(stderr, "cm: '%s' is not a c-mera generator "
			"(looked in %s and $PATH): %s\n",
			canonical, exec_path, strerror(errno));
	exit(1);
}

/* Resolve a user-typed backend name to the cm-<name> binary it means:
 * the alias table first, then the direct `cm-<name>` convention. */
static const char *resolve (const char *requested)
{
	size_t i;
	char *canonical = NULL;

	for (i = 0; i < sizeof(aliases) / sizeof(*aliases); i++)
		if (strcmp(requested, aliases[i].name) == 0)
			return aliases[i].canonical;

	if (asprintf(&canonical, "cm-%s", requested) <= 0) {
		fprintf(stderr, "Allocation error, cannot start generator.\n");
		exit(1);
	}
	return canonical;
}

int main(int argc, char **argv)
{
	if (argc == 1) {
		printf("C-Mera generator selection frontend.\n"
				"Usage: cm <backend> [args...]\n"
				"Looks for an executable named cm-<backend> on $CM_EXEC_PATH\n"
				"(defaults to %s) or $PATH, the way git looks for git-<verb>.\n"
				"Adding a backend needs no change here: just install cm-<backend>.\n",
				BINDIR);
		return 1;
	}

	if (strcmp(argv[1], "--version") == 0 || strcmp(argv[1], "-V") == 0) {
		argv[1] = "--version";
		exec_generator("cm-c", argv + 1);
	}
	if (strcmp(argv[1], "--help") == 0 || strcmp(argv[1], "-h") == 0) {
		argv[1] = "--help";
		exec_generator("cm-c", argv + 1);
	}

	argv[1] = (char *) resolve(argv[1]);
	exec_generator(argv[1], argv + 1);
	return 1; /* unreached: exec_generator exits on failure */
}

