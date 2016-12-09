#define _GNU_SOURCE
#include <string.h>
#include <stdlib.h>
#include <stdio.h>
#include <stdbool.h>
#include <errno.h>
#include <unistd.h>

int main(int argc, char **argv)
{
	char *prog = NULL;
	char *gen = NULL;
	int len = 0;
	bool help = false, version=false;
	
	if (argc == 1) {
		printf("C-Mera generator selection frontend.\n"
				"Please specify generator type as c, c++, cxx, glsl, ocl, cuda or use --help.\n"
				"Generator abbreviations are ok and checked in the order given above.\n");
		return 1;
	}
	
	len = strlen(argv[1]);
	if      (strncmp(argv[1], "c",      len) == 0) gen = "cm-c";
	else if (strncmp(argv[1], "c++",    len) == 0) gen = "cm-cxx";
	else if (strncmp(argv[1], "cxx",    len) == 0) gen = "cm-cxx";
	else if (strncmp(argv[1], "glsl",   len) == 0) gen = "cm-glsl";
	else if (strncmp(argv[1], "ocl",    len) == 0) gen = "cm-opgencl";
	else if (strncmp(argv[1], "opencl", len) == 0) gen = "cm-opencl";
	else if (strncmp(argv[1], "cuda",   len) == 0) gen = "cm-cuda";
	else if (strncmp(argv[1], "--version", len) == 0) { gen = "cm-c"; version = true; }
	else if (strncmp(argv[1], "-V", len) == 0) { gen = "cm-c"; version = true; }
	else { gen = "cm-c"; help = true; }
	
	int n = asprintf(&prog, "%s/%s", BINDIR, gen);
	if (n <= 0) {
		fprintf(stderr, "Allocation error, cannot start generator.\n");
		return 1;
	}
	
	if (help)
		execl(prog, "cm <generator>", "--help", NULL);
	else if (version)
		execl(prog, "cm <generator>", "--version", NULL);
	else {
		argv[1] = gen;
		execv(prog, argv+1);
	}
	fprintf(stderr, "Cannot spawn generator process: %s\n", strerror(errno));
	return 1;
}


