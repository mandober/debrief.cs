# 8 queens problem

Problem: arrange 8 queens on a chessboard (n = 8) such that no two queens attack each other.

<!-- #region Analysis -->

<details><summary>Analysis</summary>

## Invariants
- each queen must be in a unique row (1-8)
- each queen must be in a unique col (a-h)
- each field either has a queen on it, or is attacked by at least 2 queens:
  the queen in that row and the queen in that column.


## Filed occupation (conclusion):
- the chessboard (n=8) is a 4-layered cake
- layer 4: 4 ⨯ 1 =  4 middle fields (D4,D5,E4,E5), Q occupies 28 fds
- layer 3: 4 ⨯ 3 = 12 surrounding the middle,      Q occupies 26 fds
- layer 2: 4 ⨯ 5 = 20 surrounding layer 3,         Q occupies 24 fds
- layer 1: 4 ⨯ 7 = 28 the outer rim around l2,     Q occupies 22 fds
               ↑ triangular numbers

Filed occupation:
- 1 filed is occupied by the queen itself,             q = 1
- 7 remaining fileds in the queen's row,               r = 7
- 7 remaining fileds in the queen's col,               c = 7
- occupied diagonal fields: min 7, max 14,             Δ = [7..14]
- occupied fields: min = 22 (1+3⨯7), max = 29 (1+4⨯7), O = [22..29]
- placing Q anywhere in col A occupies 1 + r + c + (d↘ & d↗) fields
- Thus, a Q anywhere in col A occupies 1 + 7 + 7 + 7 = 1 + 3 ⨯ 7 = *22 fields*


Diagonals occupation:    ↘     ↗
- Q on A1 occupies 7 = 7 ↘ + 0 ↗
- Q on A2 occupies 7 = 6 ↘ + 1 ↗
- Q on A3 occupies 7 = 5 ↘ + 2 ↗
- Q on A4 occupies 7 = 4 ↘ + 3 ↗
- Q on A5 occupies 7 = 3 ↘ + 4 ↗
- Q on A6 occupies 7 = 2 ↘ + 5 ↗
- Q on A7 occupies 7 = 1 ↘ + 6 ↗
- Q on A8 occupies 7 = 0 ↘ + 7 ↗



- Q₁ on A1 occupies 22 = 1 + 7 + 7 + (7 + 0) + (0 + 0)
- Q₁ on A2 occupies 22 = 1 + 7 + 7 + (6 + 1) + (0 + 0)
- Q₁ placed on A3 --> occupies 22 fields: 1 + 7 + 7 + (5 + 2)
- Q₁ placed on A4 --> occupies 22 fields: 1 + 7 + 7 + (4 + 3)
- Q₁ placed anywhere in col 1 --> occupies 22 fields (out of 64)
- Q₅ placed on col 1 --> occupies 22 fields (out of 64)

## Insights
- at least some queens should form a knoght-jumps pattern (L pattern). In fact, when n=4, (probably) all solutions form the knoght's tour pattern.

## Permutations
- queen 1 can be placed anywhere in col A. If placed in the corner, the number of possibile fields to place queen 2 in col B decreses to 6, but if queen 1 is not in a corner, the possible fields in col B drop to 5.
- placing a queen in a corner, attacks the entire main or aux diagonal; better avoid corners
- With Q₁ in corner A1, the number of possible fields in the remaining columns is decreased to 6.
- With Q₁ on A2, the number of possible fields in the next col, B, is decresed to 5


## Variants
- when n=4, placing a queen in a corner cuts the number of remaing unattacked fields to 16 - 10 = 6. These 6 fields cannot accomodate the 3 remaining quuens (only two). Thus, *do not use corners!*


## Queries
- an empty field is under attack by at least 2 queens. What is the max number of queens a field can be under attack from?


## n = 4
```
0 0 x 0 1
x 0 0 0 2
0 0 0 x 3
0 x 0 0 4
A B C D
```


## n = 8
```
0 0 0 0 0 0 0 0 1
0 0 0 0 0 0 0 0 2
0 0 0 0 0 0 0 0 3
0 0 0 0 0 0 0 0 4
0 0 0 0 0 0 0 0 5
0 0 0 0 0 0 0 0 6
0 0 0 0 0 0 0 0 7
0 0 0 0 0 0 0 0 8
A B C D E F G H
```

## Layered cake

```
┌───────────────────────────────┐
│                              ¹│
│   ┌───────────────────────┐   │
│   │                      ²│   │
│   │   ┌───────────────┐   │   │
│   │   │              ³│   │   │
│   │   │   ┌───────┐   │   │   │
│   │   │   │      ⁴│   │   │   │
│   │   │   │   ∙   │   │   │   │
│   │   │   │       │   │   │   │
│   │   │   └───────┘   │   │   │
│   │   │               │   │   │
│   │   └───────────────┘   │   │
│   │                       │   │
│   └───────────────────────┘   │
│                               │
└───────────────────────────────┘
```

layer 1: 7 ⨯ 4 = 28 fields, ♛ there occup. 22 fields
layer 2: 5 ⨯ 4 = 20 fields, ♛ there occup. 24 fields
layer 3: 3 ⨯ 4 = 12 fields, ♛ there occup. 26 fields
layer 4: 1 ⨯ 4 =  4 fields, ♛ there occup. 28 fields

## Empty chessboard

```
┌───┬───┬───┬───┬───┬───┬───┬───┐
│   │   │   │   │   │   │   │   │
├───┼───┼───┼───┼───┼───┼───┼───┤
│   │   │   │   │   │   │   │   │
├───┼───┼───┼───┼───┼───┼───┼───┤
│   │   │   │   │   │   │   │   │
├───┼───┼───┼───┼───┼───┼───┼───┤
│   │   │   │   │   │   │   │   │
├───┼───┼───┼───┼───┼───┼───┼───┤
│   │   │   │   │   │   │   │   │
├───┼───┼───┼───┼───┼───┼───┼───┤
│   │   │   │   │   │   │   │   │
├───┼───┼───┼───┼───┼───┼───┼───┤
│   │   │   │   │   │   │   │   │
├───┼───┼───┼───┼───┼───┼───┼───┤
│   │   │   │   │   │   │   │   │
└───┴───┴───┴───┴───┴───┴───┴───┘
```


</details>

<!-- #endregion -->

## Solution (manual)


*Diamond pattern* - symmetric solution, knight's jumps elements

```
┌───┬───┬───┬───┬───┬───┬───┬───┐
│   │   │   │ Q │   │   │   │   │ ¹
├───┼───┼───┼───┼───┼───┼───┼───┤
│   │   │   │   │   │ Q │   │   │ ²
├───┼───┼───┼───┼───┼───┼───┼───┤
│   │   │   │   │   │   │   │ Q │ ³
├───┼───┼───┼───┼───┼───┼───┼───┤
│   │ Q │   │   │   │   │   │   │ ⁴
├───┼───┼───┼───┼───┼───┼───┼───┤
│   │   │   │   │   │   │ Q │   │ ⁵
├───┼───┼───┼───┼───┼───┼───┼───┤
│ Q │   │   │   │   │   │   │   │ ⁶
├───┼───┼───┼───┼───┼───┼───┼───┤
│   │   │ Q │   │   │   │   │   │ ⁷
├───┼───┼───┼───┼───┼───┼───┼───┤
│   │   │   │   │ Q │   │   │   │ ⁸
└───┴───┴───┴───┴───┴───┴───┴───┘
  ᵃ   ᵇ    ᶜ   ᵈ    ᵉ    ᶠ   ᵍ   ʰ
  ¹   ²   ³   ⁴   ⁵   ⁶   ⁷   ⁸
```

### Coverge 1

```
┌───┬───┬───┬───┬───┬───┬───┬───┐
│   │   │ ¹ │ Q │ ¹ │   │   │   │ ¹
├───┼───┼───┼───┼───┼───┼───┼───┤
│   │   │ ¹ │   │ ¹ │ Q │   │ ¹ │ ²
├───┼───┼───┼───┼───┼───┼───┼───┤
│   │   │ ¹ │   │ ¹ │   │ ¹ │ Q │ ³
├───┼───┼───┼───┼───┼───┼───┼───┤
│ ¹ │ Q │ ¹ │   │ ¹ │ ¹ │   │   │ ⁴
├───┼───┼───┼───┼───┼───┼───┼───┤
│ ¹ │ ¹ │ ¹ │   │ ² │   │ Q │ ¹ │ ⁵
├───┼───┼───┼───┼───┼───┼───┼───┤
│ Q │ ¹ │ ² │ ¹ │ ¹ │   │ ¹ │   │ ⁶
├───┼───┼───┼───┼───┼───┼───┼───┤
│ ¹ │ ¹ │ Q │ ² │ ² │ ¹ │ ¹ │ ¹ │ ⁷
├───┼───┼───┼───┼───┼───┼───┼───┤
│ ¹ │ ² │ ² │ ² │ Q │ ¹ │ ¹ │ ¹ │ ⁸
└───┴───┴───┴───┴───┴───┴───┴───┘
  ᵃ   ᵇ    ᶜ   ᵈ    ᵉ    ᶠ   ᵍ   ʰ
  ¹   ²   ³   ⁴   ⁵   ⁶   ⁷   ⁸
```

### Coverge 2

```
┌───┬───┬───┬───┬───┬───┬───┬───┐
│¹  │¹  │¹  │ Q │¹  │¹  │¹  │¹  │ ¹
├───┼───┼───┼───┼───┼───┼───┼───┤
│   │   │¹  │¹  │¹  │ Q │   │   │ ²
├───┼───┼───┼───┼───┼───┼───┼───┤
│   │¹  │   │¹  │   │¹  │   │ Q │ ³
├───┼───┼───┼───┼───┼───┼───┼───┤
│¹  │ Q │   │¹  │   │   │¹  │   │ ⁴
├───┼───┼───┼───┼───┼───┼───┼───┤
│   │   │   │¹  │   │   │ Q │¹  │ ⁵
├───┼───┼───┼───┼───┼───┼───┼───┤
│ Q │   │   │¹  │   │   │   │   │ ⁶
├───┼───┼───┼───┼───┼───┼───┼───┤
│   │   │ Q │¹  │   │   │   │   │ ⁷
├───┼───┼───┼───┼───┼───┼───┼───┤
│   │   │   │¹  │ Q │   │   │   │ ⁸
└───┴───┴───┴───┴───┴───┴───┴───┘
  ᵃ   ᵇ    ᶜ   ᵈ    ᵉ    ᶠ   ᵍ   ʰ
  ¹   ²   ³   ⁴   ⁵   ⁶   ⁷   ⁸
```

### Coverge 3

```
┌────┬────┬────┬────┬────┬────┬────┬────┐
│    │    │    │ Q  │    │    │    │    │ ¹
├────┼────┼────┼────┼────┼────┼────┼────┤
│    │    │    │    │    │ Q  │    │    │ ²
├────┼────┼────┼────┼────┼────┼────┼────┤
│    │    │    │    │    │    │    │ Q  │ ³
├────┼────┼────┼────┼────┼────┼────┼────┤
│    │ Q  │    │    │    │    │    │    │ ⁴
├────┼────┼────┼────┼────┼────┼────┼────┤
│    │    │    │    │    │    │ Q  │    │ ⁵
├────┼────┼────┼────┼────┼────┼────┼────┤
│ Q  │    │    │    │    │    │    │    │ ⁶
├────┼────┼────┼────┼────┼────┼────┼────┤
│    │    │ Q  │    │    │    │    │    │ ⁷
├────┼────┼────┼────┼────┼────┼────┼────┤
│    │    │    │    │ Q  │    │    │    │ ⁸
└────┴────┴────┴────┴────┴────┴────┴────┘
  ᵃ     ᵇ    ᶜ     ᵈ    ᵉ     ᶠ     ᵍ    ʰ
  ¹    ²    ³     ⁴   ⁵     ⁶    ⁷    ⁸
```
Q₁ Q₂ Q₃ Q₄ Q₅ Q₆ Q₇ Q₈


Q¹ Q² Q³ Q⁴ Q⁵ Q⁶ Q⁷ Q⁸


### Coverge 4

```
┌────┬────┬────┬────┬────┬────┬────┬────┐
│²   │²   │³   │ Q₁ │⁴   │⁴   │³   │²   │ ¹
├────┼────┼────┼────┼────┼────┼────┼────┤
│²   │²   │³   │⁴   │⁴   │ Q₂ │³   │³   │ ²
├────┼────┼────┼────┼────┼────┼────┼────┤
│³   │³   │³   │³   │⁴   │³   │⁴   │ Q₃ │ ³
├────┼────┼────┼────┼────┼────┼────┼────┤
│⁴   │ Q₄ │³   │³   │²   │⁴   │⁴   │⁴   │ ⁴
├────┼────┼────┼────┼────┼────┼────┼────┤
│⁴   │⁴   │⁴   │²   │³   │³   │ Q₅ │⁴   │ ⁵
├────┼────┼────┼────┼────┼────┼────┼────┤
│ Q₆ │⁴   │³   │⁴   │³   │³   │³   │³   │ ⁶
├────┼────┼────┼────┼────┼────┼────┼────┤
│³   │³   │ Q₇ │⁴   │⁴   │³   │²   │²   │ ⁷
├────┼────┼────┼────┼────┼────┼────┼────┤
│²   │³   │⁴   │⁴   │ Q₈ │³   │²   │²   │ ⁸
└────┴────┴────┴────┴────┴────┴────┴────┘
  ᵃ     ᵇ    ᶜ     ᵈ    ᵉ     ᶠ     ᵍ    ʰ
  ¹    ²    ³     ⁴   ⁵     ⁶    ⁷    ⁸
```

- each field attacked by: 2, 3 or 4 queens


Groups of fields with coverage of 4 form "ship" patterns:
There are 4 (4 fields in group) "ship" patterns:

```
 East          North                West                    South
  c              x r                r                         x
x x x          c x                  x x x                     x c
    r            x                    c                     r x

p1  |  p1 rotated 90° ccw  |  p1 rotated 180° ccw  |  p1 rotated 270° ccw


The 4 groups are separated, except E-N and W-S touch diagonally.


Compass directions are chessboard-wise

  c     …central
x x x   …base
    r   …right
```

### Coverge 5

```
┌────┬────┬────┬────┰────┬────┬────┬────┐
│²   │²   │³   │ Q₁ ┃⁴   │⁴   │³   │²   │ ¹
├────╆━━━━┿━━━━┿━━━━╋━━━━┿━━━━┿━━━━╅────┤
│²   ┃²   │³   │⁴   ┃⁴   │ Q₂ │³   ┃³   │ ²
├────┠────╆━━━━┿━━━━╋━━━━┿━━━━╅────┨────┤
│³   ┃³   ┃³   │³   ┃⁴   │³   ┃⁴   ┃ Q₃ │ ³
├────┠────┠────╔════╦════╗────┨────┨────┤
│⁴   ┃ Q₄ ┃³   ║³   ║²   ║⁴   ┃⁴   ┃⁴   │ ⁴
┝━━━━╋━━━━╋━━━━╠════╬════╣━━━━╋━━━━╋━━━━┥
│⁴   ┃⁴   ┃⁴   ║²   ║³   ║³   ┃ Q₅ ┃⁴   │ ⁵
├────┠────┠────╚════╩════╝────┨────┨────┤
│ Q₆ ┃⁴   ┃³   │⁴   ┃³   │³   ┃³   ┃³   │ ⁶
├────┠────╄━━━━┿━━━━╋━━━━┿━━━━╃────┨────┤
│³   ┃³   │ Q₇ │⁴   ┃⁴   │³   │²   ┃²   │ ⁷
├────╄━━━━┿━━━━┿━━━━╋━━━━┿━━━━┿━━━━╃────┤
│²   │³   │⁴   │⁴   ┃ Q₈ │³   │²   │²   │ ⁸
└────┴────┴────┴────┸────┴────┴────┴────┘
  ᵃ     ᵇ    ᶜ     ᵈ    ᵉ     ᶠ     ᵍ    ʰ
  ¹    ²    ³     ⁴   ⁵     ⁶    ⁷    ⁸
```



### Coverge 6

```
┌────┬────┬────┬────┰────┬────┬────┬────┐
│    │    │    │ Q₁ ┃    │    │    │    │ ¹
├────╆━━━━┿━━━━┿━━━━╋━━━━┿━━━━┿━━━━╅────┤
│    ┃    │    │    ┃    │ Q₂ │    ┃    │ ²
├────┠────╆━━━━┿━━━━╋━━━━┿━━━━╅────┨────┤
│    ┃    ┃    │    ┃    │    ┃    ┃ Q₃ │ ³
├────┠────┠────╆━━━━╇━━━━╅────┨────┨────┤
│    ┃ Q₄ ┃    ┃    │    ┃    ┃    ┃    │ ⁴
┝━━━━╋━━━━╋━━━━╉────┼────╊━━━━╋━━━━╋━━━━┥
│    ┃    ┃    ┃    │    ┃    ┃ Q₅ ┃    │ ⁵
├────┠────┠────╄━━━━╈━━━━╃────┨────┨────┤
│ Q₆ ┃    ┃    │    ┃    │    ┃    ┃    │ ⁶
├────┠────╄━━━━┿━━━━╋━━━━┿━━━━╃────┨────┤
│    ┃    │ Q₇ │    ┃    │    │    ┃    │ ⁷
├────╄━━━━┿━━━━┿━━━━╋━━━━┿━━━━┿━━━━╃────┤
│    │    │    │    ┃ Q₈ │    │    │    │ ⁸
└────┴────┴────┴────┸────┴────┴────┴────┘
  ᵃ     ᵇ    ᶜ     ᵈ    ᵉ     ᶠ     ᵍ    ʰ
  ¹    ²    ³     ⁴   ⁵     ⁶    ⁷    ⁸
```

One solution:
 Q₁  Q₂ Q₃   Q₄ Q₅ Q₆ Q₇ Q₈
`D1` F2 H3  `B4` G5 A6 C7 E8
 E8                 H3


layer 3: 4 queens. 2 per Kuadrant:  A4  and C1, or A3 and `D1` (relative to K1)
layer 2: 4 queens. 2 per Kuadrant: `B4` and C2, or B3 and  D2  (relative to K1)
layer 1: ∅
layer 0: ∅


layer1, quadrant 1:
```
o o X Y
o
y
x
```
Q,x = A4 and Q,X = D1
or
Q,y = A3 and Q,Y = E1
