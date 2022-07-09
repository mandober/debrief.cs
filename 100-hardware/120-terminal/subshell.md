# bash subshells

bash creates subshells in the following situations:
- for an expression surrounded by parentheses: `( ... )`
  - except directly inside `[[ ... ]]`, where parentheses are only used for 
    logical grouping.
- for every segment of a pipeline `|`, including the first one.
  - every subshell involved is a clone of the original shell in terms of content
    (process-wise, subshells can be forked from other subshells, before commands 
    are executed). 
  - Thus, modifications of subshells in earlier pipeline segments do not affect 
    later ones. 
  - By design, commands in a pipeline are launched simultaneously - sequencing 
    only happens through their connected stdin/stdout pipes). 
  - bash 4.2+ has shell option `lastpipe` (off by default), which causes the 
    last pipeline segment to _not run in a subshell_.
- for command substitution, `($(...))`
- for process substitution, `(<(...))`
  - typically creates 2 subshells
  - in the case of a simple command, there is a technique to only create one: 
    prepend the simple command with `exec (<(exec ...))`.
- background execution, `cmd &`

Combining these constructs will result in more than one subshell.
