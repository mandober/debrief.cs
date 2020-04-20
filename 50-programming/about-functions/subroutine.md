# Subroutine



## Classification

Subprograms may be defined within programs, or separately as shared library files.

Subroutines, often collected into libraries, are an important mechanism for sharing and trading software.

The name subprogram suggests a subroutine behaves in much the same way as a computer program that is used as one step in a larger program or another subprogram. A subroutine is often coded so that it can be started several times and from several places during one execution of the program, including from other subroutines, and then branch back (return) to the next instruction after the call, once the subroutine's task is done. The idea of a subroutine was initially conceived by John Mauchly during his work on ENIAC, and recorded in a Harvard symposium in January of 1947 entitled "Preparation of Problems for EDVAC-type Machines". Maurice Wilkes, David Wheeler and Stanley Gill are generally credited with the formal invention of this concept, which they termed a *closed subroutine*, contrasted with an *open subroutine or macro*.

Use of subroutines will often substantially reduce the cost of developing and maintaining a large program, while increasing its quality and reliability.

The OO paradigm is based on objects that encapsulate their intrinsic behavior through methods; methods are specialized subroutines attached to the objects.


## Main parts

Header and body

The main content of a subroutine is in its body, which is the code that is executed when the subroutine is invoked.

A subroutine may be written so that it expects to obtain one or more data values from the calling code (to replace its parameters or formal parameters).

The calling program provides actual values for these parameters, called arguments.


Different programming languages may use different conventions for passing arguments:
