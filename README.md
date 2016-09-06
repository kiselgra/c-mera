# C-Mera
C-Mera is a very simple source-to-source compiler
that utilizes Lisp's macro system for meta programming of C-like languages.
One of its main goals is to be easily extensible to other C-like languages
and the different versions based on C-Mera's core illustrate that this is a simple process.

## Contents
1. [Overview](#Overview)
1. [License](#License)
1. [Usage](#Usage)
	1. [Build Instructions](#BuildInstructions)
	1. [Emacs Integration](#EmacsIntegration)
	1. [Examples](#Examples)
	1. [Compilation Process](#CompilationProcess)
	1. [Programming Guide](#ProgGuide)

## C-Mera<a name="Overview">
The C-Mera system is a very simple compiler that
transforms a notation based on S-Expressions (sexp)
for C-like languages to the native syntax of that language,
e.g. from sexp-C to C, and from sexp-CUDA to CUDA. The
semantics of the sexp-based notation is identical to that of
the native language, i.e. no inherent abstraction or layering
is introduced.

There are a number of different code generators available, all based on C-Mera with a few syntactic extensions.

- **cgen** is the default C code generator
- **cxxgen** is an extension supporting a subset of C++
- **cugen** is an extension of cxxgen featuring kernel definition and call syntax
- **glslgen** is an extension of cgen that can generate opengl shader code
- **shadergen** extends glslgen such that it produces output suitable for the cgl rendering framework
- **multigen** is the combination of all of the above, the blunt axe of the generator family, so to say.

The code for cgen is found in src/{core,usr} and is rather comprehensive while the
other generators (each in their own subdirectory) are quite concise. Browse the
files of the derived generators to see how far the respective language support
has grown.

## License<a name="License">
The C-Mera system (which is the collective term for the code in the repository)
is provided under the conditions of the GNU GPL version 3 or later, see the file COPYING.

## Usage<a name="Usage">

To generate a C source file choose the appropriate generator and simply add the input 
and output file:

    $ cgen input.lisp -o test.c
    $ cxxgen input.lisp -o test.cpp

For more details see [Compilation Process](#compilation)

### Build Instructions<a name="BuildInstructions">

We require SBCL at the moment, sorry.

- Install SBCL
- Install Quicklisp (See the example [there](https://www.quicklisp.org/))
- Build C-Mera
	- autoreconf -if  (when building from a fresh repo)
	- ./configure
	- make
	- make install


### Emacs Integration<a name="EmacsIntegration">
The easiest way to configure your Lisp to load C-Mera is by adding it to quicklisp, as follows

	$ ln -s <path-to-cmera> ~/quicklisp/local-projects/c-mera

#### Slime
With this setup  it is possible to use Slime for the development process. 
The relevant C-Mera modules can be loaded by

	(asdf:load-system :cgen)     ; or :cxxgen, etc.
	(in-package :cg-user)        ; cl-user equivalent with c-mera environment
	(switch-reader)              ; optional for prototyping

After that you can enter Lisp expressions that print valid C Code to the REPL.

	(simple-print 
	  (function main () -> int 
	    (return 0)))

#### Emacs Minor Mode (cm-mode)
To support proper indentation and highlighting of keywords, especially when your forms are not known to a SLIME session, we provide a simple minor mode for Emacs. You can set it up by

	$ cp <path-to-cmera>/util/emacs/cm-mode.el <load-path>/cm-mode.el
	$ cp <path-to-cmera>/util/emacs/cm.indent ~/.emacs.d/cm.indent
   
You can then add `(require 'cm-mode)` to your `.emacs` file and load it using `M-x cm-mode`.
To load it automatically you can add a mode specification to the top of your file:

	; -*- mode: Lisp; eval: (cm-mode 1); -*-

You can extend the indentation and keyword information by having an additional file called `cm.indent` along your source files, see the provided `cm.indent` for the layout.

### Examples<a name="Examples">
In the following we show a few examples of how to use cgen.
Note that we give also give it thorough treatment in [our ELS paper](http://lgdv.cs.fau.de/publications/publication/Pub.2014.tech.IMMD.IMMD9.defmac/).

#### Implementation of `strcmp(3)`
This example illustrates the basic function definition syntax.  It's a
straightforward transcription of the example in the K&R book.
    
	(function strcmp ((char *p) (char *q)) -> int
      (decl ((int i 0))
        (for (() (== p[i] q[i]) i++)
          (if (== p[i] #\null)
              (return 0)))
        (return (- p[i] q[i]))))

#### Implementation of `strcat(3)`
Here we add arrays to the mix.
It, too, is a straightforward transcription of the example in the K&R book.

    (function strcat ((char p[]) (char q[])) -> void
      (decl ((int i 0) (int j 0))
        (while (!= p[i] #\null)
          i++)
        (while (!= (set p[i++] q[j++]) #\null))))

#### Implementation of `wc -l`
This example shows a main function 
	and how to forward-declare externally defined symbols originating from C libraries.
There is also `use-functions` to declare externally defined functions.
These forms are required as the underlying lisp implementation checks if the symbols used are actually defined.

    (use-variables EOF)
    
    (include <stdio.h>)
    
    (function main () -> int
      (decl ((int c)
             (int nl 0))
        (while (!= (set c (funcall getchar)) EOF)
          (if (== c #\newline)
              ++nl))
        (printf "%d\n" nl)
        (return 0)))

#### Implementation of Shellsort
Lots of loops:

    (function shellsort ((int *v) (int n)) -> void
      (decl ((int temp))
        (for ((int gap (/ n 2)) (> gap 0) (/= gap 2))
          (for ((int i gap) (< i n) i++)
            (for ((int j (- i gap)) (&& (>= j 0) (> v[j] (aref v (+ j gap)))) (-= j gap))
              (set temp v[j]
                   v[j] (aref v (+ j gap))
                   (aref v (+ j gap)) temp))))))

### Compilation Process<a name="CompilationProcess">
Suppose the file `wc-l.lisp` contains the code of the line counting example shown above.
Here is a cmdline session:

    $ ls
    wc-l.lisp
    $ cgen wc-l.lisp
    using variables: EOF, 
    #include <stdio.h>
    int main(void)
    {
            int c;
            int nl = 0;
            while (
            c = getchar(); != EOF) {
                    if (c == '\n') 
                            ++nl;
            }
            printf("%d\n", nl);
    }
    $ cgen wc-l.lisp -o wc-l.c
    using variables: EOF, 
    $ ls
    wc-l.c wc-l.lisp
    $ gcc wc-l.c -o wc-l

	
## Programming Guide<a name="ProgGuide">

This section describes how some aspects of the system work.
We only describe what we believe may be noteworthy for either the seasoned Lisp or the seasoned C programmer.
This part will be in motion as we add information that some of our users would have liked to have :)

### Simple Syntax

#### Conditionals

```if``` statements have exactly one or two subforms. The second one is optional, and if present, represents the ```else``` part. The following examples is thus not correct:

	(if (!= a 0)
	    (printf "all is safe")
	    (return (/ b a)))

You can use ```progn``` to group multiple sub-forms

	(if (!= a 0)
	    (progn
	      (printf "all is safe")
	      (return (/ b a))))

or, equivalently, ```when```

	(when (!= a 0)
	   (printf "all is safe")
	   (return (/ b a)))

which expands to the previous form using ```progn```, which, in turn, expands to:

	if (a != 0) {
	    ...
	}

In contrast, the first example expands to

	if (a != 0) {
	    printf(...);
	else
	    return ...;

We also support ```cond```.

##### Open Issues
We currently don't have ```unless```.


#### Loops
A for loop is written with the loop-head grouped:

	(for ((int i 0) (< i n) (+= i 1))
	  ...)

Note that C-Mera supports C-like increments and decrements for simple expressions:

	(for ((int i 0) (< i n) ++i)
	  ...)

```while''' is straighforward

	(while (< a b)
	   ...
	   ...)

##### Open Issues
```do-while``` is not implemented at the moment.


#### Declarations
A set of declarations is introduced with

	(decl ((T name [init])
	       ...)
	  ...)

the initializer is optional and C-Mera collects as many symbols to be part of the type as possible,
e.g.

	(decl ((const unsigned long int x 0)) ...)

is correctly identified. This is enabled by having a list of valid 'qualifiers' that can add to a type.
Type names do not have to be introduced and thus the syntax for one decl-item is

	[qualifier]* typename variablename [initializer]

If you work in an environment that supports further qualifiers you can use

	(add-qualifier ...)

e.g.

	(add-qualifier __kernel __global)

to introduce a number of them.

As mentioned above, typenames are not checked. However, variables have to be declared before they are used, as in

	(decl ((int a 0)
	       (int b 0))
	  (return (+ a b)))

If you want to use global variables or functions you can make them know by

	(use-variables ...)
	(use-functions ...)

In declarations (such as ```decl```, in function parameters and ```(sizeof ...)```) the type does not have to
	be enclosed in parens (and must not be). There are places, however, 
	where for the sake of simplicity type names must be grouped, as e.g. in function return values:

	(function foo ((const int *i) ...) -> (unsigned int)
	  ...)

As shown in this example C-Mera also supports some C-style decorations, i.e.

	(decl ((int *i 0)) ...)
	(decl ((int* i 0)) ...)

are both recognized.


### Namespace (Lisp vs C-Mera)
Some C-Mera symbols are also defined in Common Lisp.
Initially C-Mera starts out in the ```cg-user``` (code generator user package) which imports
	all ```cl``` symbols that do not conflicts to provide metaprogramming as seamlessly as possible.

Especially with symbols like ```if``` etc care has to be taken to use the right one.
This can be done by explicitly naming the symbol ```cl:if```, but to define lisp functions
or lisp-heavy parts of the meta code it is often more convenient to use the ```lisp``` form, such as
in the example from our ELS presentation:

	(defmacro match (expression &rest clauses)
	  `(macrolet 
	     ((match-int (expression &rest clauses)
	        `(progn 
	           (set reg_err 
	                (regcomp &reg ,(caar clauses) REG_EXTENDED))
	           (if (regexec &reg ,expression 0 0 0)
	               (progn ,@(cdar clauses))
	               ,(lisp (if (cdr clauses)      
	                          `(match-int 
	                             ,expression 
	                             ,@(cdr clauses))))))))
	     (decl ((regex_t reg)
	            (int reg_err))
	       (match-int ,expression ,@clauses))))

Here we define a recursively expanding macrolet, ```match-int```, that inserts conditional clauses (as in ```(if (regexec ....))``` and also checks to terminate the iteration (with ```,(lisp (if ...))```).

For convenience we provide a sibling to ```defmacro```, ```deflmacro```, which starts out in the Lisp namespace.


### Codestrings
tbd.

