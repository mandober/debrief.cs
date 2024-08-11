# Arm's-length recursion

**Short-circuiting the base case**, aka **arm's-length recursion**, consists of checking the base case before making a recursive call, i.e. checking if the next call will be the base case, instead of calling and then checking for the base case.

Short-circuiting is particularly done for efficiency reasons, to avoid the overhead of a function call that immediately returns.

Usually, recursive functions, on entry, first check the base case: if it is satisfied the recursion ends; otherwise, the recursive branch is executed.

In the arm's-length recursion, instead of making the recursive call (which checks the base case), the check to see if the next iteration will hit the base case is performed.

So, when a function using this type of recursion is called, the base case is checked to determine whether to stop recursion and return the result, or to continue recusing by executing the recursive case. So far, everything is the same as with the usual recurision. However, here, before the function calls itself recusrively, it chacks whether the next iteration will hit the base case, so as to save a function call. In other words, the check is made at the end of
