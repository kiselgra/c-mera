# C-Mera
C-Mera is a very simple source-to-source compiler
that utilizes Lisp's macro system for meta programming of C-like languages.
One of its main goals is to be easily extensible to other C-like languages
and the different versions based on C-Mera's core illustrate that this is a simple process.

The C-Mera system is a very simple compiler as it simply
transforms a notation based on S-Expressions (sexp)
for C-like languages to the native syntax of that language,
e.g. from sexp-C to C, and from sexp-CUDA to CUDA. The
semantics of the sexp-based notation is identical to that of
the native language, i.e. no inherent abstraction or layering
is introduced.

There are a number of different code generators available, all based on c-mera with a few syntactic extensions.

- **cgen** is the default C code generator
- **cxxgen** is an extension supporting a subset of C++
- **cugen** is an extension of cxxgen featuring kernel definition and call syntax
- **glslgen** is an extension of cgen that can generate opengl shader code
- **shadergen** extends glslgen such that it produces output suitable for the cgl rendering framework
- **multigen** is the combination of all of the above, the blunt axe of the generator family, so to say.

The code for cgen is found in src/{core,usr} and rather comprehensive while to
other generators (each in their own subdirectory) are quite concise. Browse the
files of the derived generators to see how far the respective language support
has grown.

## License
The C-Mera system (which is the collective term for the code in the repository)
is provided under the conditions of the GNU GPL version 3 or later, see the file COPYING.

## Usage

To generate a C source file choose the appropriate generator and simply add the input 
and output file:

    $ cgen input.lisp -o test.c
    $ cxxgen input.lisp -o test.cpp

For more details see [Compilation Process](#compilation)

### Build Instructions

We require SBCL at the moment, sorry.

- Install SBCL
- Install Quicklisp (See the example there)
- Build C-Mera
	- ./configure
	- make
	- make install


### Emacs Integration
tbd

Once C-Mera is configured for the use with Emacs it is possible to use Slime for the development process. Yet the relevant C-Mera modules have to be loaded manually:

``` lisp
(asdf:load-system :cgen)
(asdf:load-system :cxxgen)
(in-package :cg-user)
(switch-reader)
```

After that it should be possible to enter the following Lisp statement that prints valid C Code to the REPL.
``` lisp
(simple-print (function main () -> int (return 0)))
```


### Examples
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

Implementation of `wc -l`
This shows a main function and forward-declares the EOF symbol.
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

### Compilaton Process<a name="compilation">
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

		

