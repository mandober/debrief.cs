# Boolean algebra

To make efficient circuits, they must be as simplified as possible while still carrying out the same operations. Truth tables are one way to work this out, but for larger circuits it would take a long time to write out the truth table for every gate. Boolean algebra is a way to simplify circuits similarly to mathematical simplification.

| Mathematical paradigm | Boolean equivalent |
|-----------------------|--------------------|
| Multiplication        | AND                |
| Addition              | OR                 |
| Complement            | NOT                |
| Subtraction           | null               |
| Division              | null               |
| "2"                   | null               |

This mathematical equivalence allows you to use BIDMAS on boolean expressions, so that you can simplify them easier.


## Boolean Identities

law               | AND                  | OR
------------------|----------------------|-----------------
identity          | a * 1 = a            | a + 0 = a
identity element  | 1                    | 0
domination        | a * 0 = 0            | a + 1 = 1
zero element      | 0                    | 1

idempotence       | a * a = a            | a + a = a
inverse           | a * a' = 0           | a + a' = 1
commutativity     | ab = ba              | a+b = b+a
associativity     | (ab)c = a(bc)        | (a + b) + c = a + (b + c)
distributivity    | (a+b)c = (a+b)(a+c)  | a * (b + c) = a * b + a * c
absorption        | a * (a+b) = a        | a + a * b = a
de morgan's law   | (ab)' = a' + b'      | (a + b)' = a' * b'
double complement | a'' = a              | a'' = a


Laws (`⊛` stands for both ops):

- Dominance/null law:    `a + 1  = 1`, `a * 0  = 0`
  a ⊛ ζ = ζ

- Inverse law:           `a + a' = 1`, `a * a' = 0`

- Double Complement Law: `a <=> a''`

- Commutative law:       `a + b <=> b + a`, `ab <=> ba`

- Associative law:       `(a ⊛ b) ⊛ c <=> a ⊛ (b ⊛ c)`

- De Morgan's Law:       `(a * b)' <=> a' + b'`,
                         `(a + b)' <=> a' * b'`

- Distributive law:      `a * (b + b') <=> a * b + a * b'`
  (distributive law is multiplying/factorising parens)

- Absorption law:        `a + (a * b) = a`, `a * (a + b) = a`. `b'+(a b')=b'`
  Like terms are absorbed.
  Opposite operators must be used within and outside the brackets, for absorption to be used. The term that is outside parens must also be inside.


* ⊛ - when only operator, stands for both ops
* ⊛, ★ - the ⊛ stands for one operation, ★ for the other

(a ⊛ b)' <=> a' ★ b'       ¬(a ⊛ b) <=> ¬a ★ ¬b
 (a * b)' <=> a' + b'        ¬(a ∧ b) <=> ¬a ∨ ¬b
 (a + b)' <=> a' * b'        ¬(a ∨ b) <=> ¬a ∧ ¬b
