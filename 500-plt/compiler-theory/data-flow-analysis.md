# Data-flow analysis

https://en.wikipedia.org/wiki/Data-flow_analysis

**Data-flow analysis** is a technique for gathering information about the possible set of values calculated at various points in a computer program. A program's **control flow graph** (CFG) is used to determine those parts of a program to which a particular value assigned to a variable might propagate.

The information gathered is often used by compilers when optimizing a program. A canonical example of a data-flow analysis is reaching definitions.

A simple way to perform data-flow analysis of programs is to set up data-flow equations for each node of the control flow graph and solve them by repeatedly calculating the output from the input locally at each node until the whole system stabilizes, i.e. *reaches a fixpoint*. This general approach, also known as *Kildall's method*, was developed by Gary Kildall (creator of CP/M) while teaching at the Naval Postgraduate School.
