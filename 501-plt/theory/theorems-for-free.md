# Theorems For Free

*Theorems For Free* by Philip Wadler, 1989


$$
 \text{ if } r: \forall X.X^* \to X^* \ \
 \text{ then } r \text{ satisfies the theorem: } \\
\ \\
\forall \text{ types } A, A' \text{ and } 
\forall \text{ total functions } 
a: A \to A' \text{ we have: } \\
\ \\
a^* \circ r_A = r_{A'} \circ a^*
$$

where
- $$r: \forall X.X^* \to X^*$$
- $$X$$ is a type param
- $$X^*$$ is a list of $$X$$
- $$a^*: A^* \to A'^*$$ is a function $$map\ a$$ that applies $$a$$ elementwise to a list of $$A$$ yielding list $$A'$$
- $$r_A: A^* \to A^*$$ is an instance of $$r$$ at type $$A$$

```haskell
f :: [a] -> [a]

head . f = f . head
reverse . f = f . reverse

inc . tail = tail . inc

-- but not like this (filtering out the odds then incrementing)
odds . inc /= inc . odds
-- because odds is too specific, it is
-- [Int] -> [Int] instead of [a] -> [a]


map f (xs ++ ys) = map xs ++ map ys
```

Therefore, mapping a function over a list then rearranging its elements, is the same as rearranging list's elements then mapping a function over it.

- head/last
- tail/init
- reverse
- (++)
