# On null value

Ever since its debut in `Algol W` back in 1965, most PLs have adopted the concept of `Null` value and *nullability*. That is, a variable of almost every type is assignable the special `null` value that represents the absence of an actual value.

Since then, its own maker called it "a billion dollar mistake". Nowadays, it's common knowledge that `null` is a source of all kinds of pain points. some of which include:
- Being able to travel silently through the code before it explodes in your face
- Subverting the type system
- Inducing mental burden for having to remember (find out, guess) which functions may return `null`
- Forcing you to defensively `null`-check every single argument (especially when writing a library), and test it
- Causing ambiguity when used to simultaneously express two things, such as `map.get(key)` returning `null` to express a missing entry, versus an existing entry without a value (expressing an unknown value).

Why does `null` inhibit correctness and hinders one's ability to reason about code?
