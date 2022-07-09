`bashfx` - bash functions and scripts

# Positional Parameters

Everything on the command line following a command's name is a positional parameter (pp).  

Positional parameters are devided into:
- **options**
- **operands**


## Operands

Operands are non-option positional parameters. They are the "payload" that is left on the command line after all options have been processed.  

## Options

Options are devided (with respect to their argument) into:  
- **flags** (i.e. options without arguments)  
- options with **required argument**  
- options with **optional argument**  
  
Options are also devided into:  
- **short** options
- **long** options


### SHORT OPTIONS

A short option begins with a dash followed by a single character.

`FLAG`  
If an option has no argument it is called a simple option or a flag: `cmd -x`.  

`OPTION WITH REQUIRED ARGUMENT`  
If the option has a required argument, it may be written:  
&bull; *immediately* after the option character: `cmd -oARG`  
&bull; as the *following* parameter: `cmd -o ARG`

`OPTION WITH OPTIONAL ARGUMENT`   
If the option has optional argument, it must be written:  
&bull; *immediately* after the option character: `cmd -oARG`  

`COMPOUNDED`  
if several short options are specified after a single dash, they are called compounded short options. This shorthand is possible as long as all, except possibly the last, options are flags.  
For example: `cmd -xyz` there are 3 flags given as one componed short option;  
and here: `cmd -xyz ARG` are 2 flags and 1 short option with required argument, so that one must come last in componded set; this can also be written as `cmd -xyzARG`.


### Long Options

A long option normally begins with double dash (--) followed by the long option name.

`FLAG`  
If the long option has no argument it is called a simple option or a flag: `cmd --long-option`  

`OPTION WITH REQUIRED ARGUMENT`  
If the option has required argument, it may be written:
- as the *following* argument: `cmd --option ARG`
- after the *equal sign*: `cmd --option=ARG`

`OPTION WITH OPTIONAL ARGUMENT`   
If the option has optional argument, it must be written after the *equal sign*: `cmd --option=ARG`  

`ABBREVIATION`  
Long options may be abbreviated, as long as the abbreviation is unambiguous with regards to other long options. For example: `cmd --lo` can be stated instead of `cmd --long-option` if there is no other long option beginning with "lo".  
  
Note: historical alternative form i.e. long option that begins with a single dash is deprecated.


## Order of positional parameters

Most programs will be able to parse options and identify operands on the command line no matter of their order. 
Some, older, programs may impose an order that options be stated first, followed by operands.  

To completely avoid ambiguity, options can be explicitly separated from operands by using the double dash `--` separator. For example: `cmd -o --opt -- OPER1 OPER2`; in this case everything after the '--' is treated as an operand, even if it looks like a proper option.  

If the same option is repeated, the latter will overshadow the former occurrence. If unrecognized option is supplied, it will be discarded.

