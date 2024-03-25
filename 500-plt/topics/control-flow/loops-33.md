# Loops

A loop is a language construction that allows repeatition of a block of code. 
One pass through a loop is called an *iteration*. 

A loop is usually controlled by a *iteration variable*, commonly denoted by `i`, which, in majority of cases, is a number or could be a number (or will be a number when the loop is compiled into assembly/machine code). Commonly, an iteration variable `i` starts at 0 and gets incremented by 1 with each pass through the loop. The loop ends when `i` reaches some specified value.

The classical *C-style for-loop*, available since at least C, sets all these aspects of running a loop in one line at the beginning of the loop:
- an iteration variable, `i`, is declared and initialized to a value
- the condition that ends the loop when met, in relation to `i`, is set
- it is specified what happens to `i` at the end of every iteration

Many PLs inherit the for-loop from C i nalmost the same exact syntax; this is an example in JS:

```js
// C-for-loop
for (const i = 0; i < 10; i++) {
  // loop's body
}

// extreme version of the C-for-loop
for (;;) {
  // infinite loop
}

// extreme version of the while-loop
while (true) {}
// extreme version of the do-while-loop
do {} while (true)
```

The C syntax is very influential since JS does not normallt have constructs that require the use of semi-colons which looks like a middle of a statement (the terminating semi-colon is optional in JS).


## Bounded and unbounded loops

Loops are bounded and unbounded.
*Unbounded loops* have an unknown number of iterations. 
*Bounded loops* have a known number of iterations. 

Any any loop, the condition that terminates the loop is checked on every single pass through the loop, even though it will be 'true' only once. If the iteration variable `i = 0` and the loop finishes when `i` hits 100, then the check whether `i <= 100` will be done 100 times. 99 times it fill be 'false', and only the last time, ~ 100th time, it will be 'true'. Doing the check every single pass through the loop seems redundant. There are ways, called *unrolling the loop*, to decrease the number of checks; this can be done manually using the soi called *Walter's (?) device* which is realized by combining the switch statement with the loop. However that is only the impl detail. The unrolling means having one check and that a bunch of the 'meat', i.e. doing the acion a bunch of times before the next check is due. For example, in a bounded loop

```js
// usual loop
for (const i = 0; i < 10; i++) {
  // do a complex computation
}

// unrolled loop
const i = 0
for (; i < 10;) {
  // do a complex computation
  i++
  // do a complex computation
  i++
  // do a complex computation
  i++
  // do a complex computation
  i++
  // do a complex computation
  i++
}
```
