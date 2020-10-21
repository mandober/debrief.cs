# Graph formulae

- graph: (V,E)
- set of vertices, V = {v₀,v₁...,vₙ}
- set of edges,    E = {e₀,e₁...,eₘ}
- cardinality of V: `n = |V|`
- cardinality of E: `m = |E|`
- max nr of edges in undigraph: `max |E|` = mₑ = `(n²-n)÷2` = `((n-1)÷2)×v`
- graph max density 0: `d₀ = m/n`
  - graph max density: `d = m/n²` = `d₀/n`
  - d = m/n² = `(n-1) ÷ (2 * v)`
  - density converges (but never touches) to 5.0
- max edges vs density:
  - d  = `(n-1) ÷ (2 * v)`
  - Eₘ = `(n-1) ÷  2 * v`
- max number of edges in digraph is hence `n²-n` (no divison by 2)
  or, if max nr. of edges in undirgraph is already available * 2


`|V|` | `max |E|` | `d = |E| ÷ |V|²` | `d₀= |E| ÷ |V|`
------|-----------|------------------|----------------
1     |    0      | 0                |  0
2     |    1      | 0.25             |  0.5
3     |    3      | 0.333            |  1
4     |    6      | 0.375            |  1.5
5     |   10      | 0.4              |  2
6     |   15      | 0.416            |  2.5
7     |   21      | 0.428            |  3
8     |   28      | 0.437            |  3.5
9     |   36      | 0.444            |  4
10    |   45      | 0.45             |  4.5
20    |  190      | 0.475            |  9.5
50    | 1225      | 0.49             | 24.5
