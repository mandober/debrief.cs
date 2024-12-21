# Continuations in Scheme



Formally, a **continuation** represents the rest of the computation from the perspective of a specific subexpression. Namely, when evaluating an expression, the next subexpression to be evaluted is selected. Considering, for example, the expression `1 + 2 * 3 - 4`. We'll call the entire expression *the overall expression*. This one contains several subexpressions, and the evaluation of the entire expression proceeds by first selecting the next subexpression to be evaluated. Folowing the rules of precedence, here, the selected subexpression is `2 * 3`. The subexpression selected for evaluation is called **the current redex**, and it is denoted by brackets for emphasis, `1 + ⎡2 * 3⎤ - 4`.

```scheme
1 + 2 * 3 - 4
1 + ⎡2 * 3⎤ - 4
1 + ⎡∙⎤ - 4
⟨1 + ⎡∙⎤⟩ - 4
⟨∙⟩ - 4
```

This subexpression is the focal point in the explanation of continuations

is, so it has a very specific name, viz. **the current redex**.

The continuation is described from the persepective of the current redex as the rest of the computation (here, as the rest of the evaluation of the overall expression). To emphisize the continuation, the current redex also represents a "hole", as `1 + ⎡2 * 3⎤ - 4`



- `⎡∙⎤` marks a hole (current redex), replaces [∙]
- `⟨∙⟩` marks a delimited continuation

```
1 + 2 * 3 - 4
```

We'll refer to the type that a function in direct style would have returned, had it not been converted into the continuation-passing style, as *nominal return type* or *nominal result*. When converted into the CPS, the function must declare an additional formal parameter that will bind the function argument, referred to as a *continuation*. Dually, all the call sites will also have to be modified to pass a continuation function besides other arguments. When conveted from direct style to CPS the extra parameter is denoted by `k` and is usually declared last.


However, the function that is converted from the direct style into CPS is not mentioned at all - its only remnant is the type `a` that it would return.
