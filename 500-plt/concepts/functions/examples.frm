# Examples of functions


Interplay between
- bijection
- inverse
- isomorphism

## Theorem

>Theorem: Let functions `f : a -> b` and `g : b -> a` be bijections. Then it is always possible to compose their composition, `(g ∘ f)ⁿ`, enough times `n` such that: `g ∘ f = 1ᴬ` and `f ∘ g = 1ᴮ`, 
where 
- (g ∘ f)¹ = (g ∘ f)
- (g ∘ f)² = (g ∘ f) ∘ (g ∘ f)
- (g ∘ f)³ = (g ∘ f) ∘ (g ∘ f) ∘ (g ∘ f)
- (g ∘ f)ⁿ = (g ∘ f) ∘ … ∘ (g ∘ f) 

>Colloraly: if this theorem is true, then is `n = 3` at most if both sets `a` and `b` have 3 elements?

This could only be entertained in case `g` maps the image of `f` to the source of `f`, e.g. `a ⟼ x ⟼ a`, i.e. so the element with which the composition starts is the one with which it ends, `a |> _ |> a` (where `_` is some element in `B`). Only compositions of this form could eventually give the starting element (which is shown below in 3-cycle), that is, if we only have two bijections.

If it is possible to introduce more bijections, f, g, h, j, k, …, then the condition that the starting element is returned by the final map still seems necessary.

```
a |> x |> … |> … |> … |> … |> … |> … |> … |> … |> a |> x
  ᶠ     ᵍ    ᵏ    ʲ                                  ᶠ
```



## cycle-1

Here, `f` and `g` are each other's inverses, so it trivially holds that 
`g ∘ f = 1ᴬ` and `f ∘ g = 1ᴮ`

```
A    f    B    g    A    f    B
a ------> x ------> a ------> x
b ------> y ------> b ------> y
c ------> z ------> c ------> z

g ∘ f = 1ᴬ ⋀ f ∘ g = 1ᴮ
```


## cycle-3

```
A    k    B    j    A    k    B    j    A    k    B    j      A    k    B
a ------> y ------> b ------> z ------> c ------> x ------>   a ------> y
b ------> z ------> c ------> x ------> a ------> y ------>   b ------> z
c ------> x ------> a ------> y ------> b ------> z ------>   c ------> x

 k  j  k  j  k  j  k
a y ┆ b z ┆ c x ┆ a y
b z ┆ c x ┆ a y ┆ b z
c x ┆ a y ┆ b z ┆ c x
└──┬┘     ┆     ┆
(j ∘ k)¹ ≠ 1ᴬ    ┆
└──┬──────┘     ┆
(j ∘ k)² ≠ 1ᴬ    ┆
└────────┬──────┘
(j ∘ k)³ = 1ᴬ



                   (j ∘ k) = (j ∘ k)¹ ≠ 1ᴬ
          (j ∘ k) ∘ (j ∘ k) = (j ∘ k)² ≠ 1ᴬ
(j ∘ k) ∘ (j ∘ k) ∘ (j ∘ k) = (j ∘ k)³ = 1ᴬ

                    (k  ∘ j) ≠ 1ᴮ
          (k  ∘ j) ∘ (k  ∘ j) ≠ 1ᴮ
(k  ∘ j) ∘ (k  ∘ j) ∘ (k  ∘ j) = 1ᴮ
```

## cycle-2

>Is cycle-2 possible?

such that

```
(j ∘ k) ≠ 1ᴬ
(j ∘ k) ∘ (j ∘ k) = 1ᴬ
AND
(k  ∘ j) ≠ 1ᴮ
(k  ∘ j) ∘ (k  ∘ j) = 1ᴮ


A    k    B    j    A
a ------> y ------> b
b ------> z ------> c
c ------> x ------> a


 k  j  k  j  k  j  k
a y   b z   c x   a y
b z   c x   a y   b z
c x   a y   b z   c x


```
