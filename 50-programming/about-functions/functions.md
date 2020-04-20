# Programming Language Concepts: Functions


Any language construct (declaration, assignment, iteration, etc.) can be formed in terms of functions.

A declaration like `let x = 3` that binds the identifier `x` to the value 3, can be in the form of a function named `let` that fixes its parameter (i.e. the value 3) and returns a function named `x` that just returns the fixes parameter, no matter how it's called (with or without args).

```js
// `let` is a reserved keyword in js
let letter = a => _ => a;
let x = letter(3);
x();   // 3
x(42); // 3
```


## Math

- functions always (accept and) return something

- two sets, A and B
- a (or x) is a variable ranging over the elements of A
- b (or y) is a variable ranging over the elements of B
- Carthesian product A x B (or A^2 if A=B) is a *set of ordered pairs* (a, b)
- Any relation between the sets A and B is a subset of A x B.
- A relation between the set A and the set B isdenoted: (a,b) in R, or aRb

A function is a special kind of relation on sets.

f: A -> B , f(x) = y

declare type: f: A->B : A,B e N, forall ab . a in A and b in B
declare rule: f(x)=y: f(x) = x*x, y = x*x
declare arity: 
- implicitly, by rule: f(x, y) = x + y (binary function)
- explicitly: f: N^2 -> N (binary function)


## C

- type declarations comes before the identifier in C
- so a function declaration begins by specifing its return type
- a function must be declared before it can be used
- which means function prototypes (signatures) are used a lot

* Keywords:
  - no special keyword marks the function declaration
  - must have 'return' keyword
  - "void" keyword marks the special case: accepts nothing or returns nothing
  - "void" is not a type, but a marker of sorts


Basic example:

```c
// function prototype (signature): int, int -> int 
int add(int a, int b);

// function declaration
int add(int a, int b) {
    return a + b;
}

// function application
add(3,7);
```

Subroutine:

```c
// prototype: int -> void
void display(int x);

// declaration
void display(int x) {
  printf("%d", x);
}

// application
display(42);
```


More examples:

```c
// prototype: void -> int
int zero(); // or:
int zero(void);

// declaration
int zero() {
  return 0;
}

// application
zero();
int z = zero();
```


## Rust

- `fn` keyword, `->` intros the body

```rust
fn add(x: i32, y: i32) -> i32 {
  x + y
}

fn add<T, U>(x: T, y: U) -> T 
where T: Display, Debug
where U: From<T>
{
  x + y
}
```
