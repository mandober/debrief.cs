# Running Scheme

Scheme variants:
- MIT Scheme
- SCM
- Chez Scheme
- Racket + scheme sicp module


## MIT Scheme options

`!#/usr/bin/scheme`

`mit-scheme` or `scheme`
--quiet 


## MIT Scheme with rlwrap

-r Put all words seen on input and output on the completion list.

-f Specify a file with a list of words to use for tab completion.
   $HOME/.mit_scheme_bindings.txt

rlwrap -r -c -f $HOME/.mit_scheme_bindings.txt scheme --quiet

.mit_scheme_bindings.txt
.mit_scheme_history


## MIT Scheme in bg

Running Scheme as a background job: the following will run Scheme as a background job, redirecting its input and output to files, and preventing it from being killed by keyboard interrupts or by logging out:

```sh
mit-scheme < ~/.mit_scheme_in > ~/mit_scheme_in.out 2>&1 &
mit-scheme < ~/code/scheme/mitschemein.scm &
```

## SCM scheme

`!#/usr/bin/scm`
