# Matrix

Since memory is linear and access to memory is alike accesing cells in 1-dimensional array, proper repr of matrix in memory is not possible. However, even if forever stuck with a linear memory, we can pull out a matrix layout, all eith the appropriate methods that accept matrix-like form of indice; they'll get translated into the plain linear indices and that is the area we'retrying to abstract or at least discover useful rules.

In the simplest case, a matrix has 2 dimensions, `x` and `y` (in fact, 1D matrix is the simplest and the special case, but it also enrails reffereingto it by the special name, vector).

1. Translating between indices of array and matrix.
  - matrix2d to array, and array to matrix2d
  - matrixNd to array
2. The 9 cell quadrant in the continuous (limitless) table.


- array
- vector
- matrix
- tensor



## 1. INDEX CONVERSIONS

Translating between indices of array and matrix.

Translating between coordinates of (2-dimensional) matrix, `M[col,row]`, into the index of a linear (1-dimensional) array, `Array[n]`.

- `x` is the total number of columns in a matrix.
- A[n] is the notation for array.
- M[col,row] or M[c][r] is the notation for 2D matrix: 
  any cell is identified by column, `c`, and row, `r`, ordered pair.


### Matrix to array

Matrix[c][r] = Array[c + r * x] = Array[n]

Example:      
Matrix[2][2] = Array[2 + 2 * 4] = Array[10]


### Array to matrix

To convert array's index into matrix' col,row coordinates, perform Euclidian division on the index of array, `n` and `x` (total nr of columns). So that the pair `(quotient, remainder)` is `(col, row)`:

Array[n]: (n / x) = (quot, rem) => Matrix[quot = col][rem = rows]

Example:      
Array[7]: (7/4) = (1,3) => Matrix[1][3]




## 2. SECTIONS

The 9 cell quadrant and limitless space.







## Models


 c |
RoW|  c        c        c              
 l |  00       01       02          
---|-----------------------------
   |                             
   |      h        v        w      
   |    c        f        s        
r0 | `00`     `01`     `02`         
   |                             
r1 | `03`     `04`     `05`         
   |                             
r2 | `06`     `07`     `08`         


crd -  x : y : z
CRD - col:row:dep 


x = 0          x=1          x=2          x=3

   .-----.      .-----.      .-----.      .-----. 
  /*002*/|     / 102 /      / 202 /      / 302 /                d=2
 /*001*/ |    / 101 /      / 201 /      / 301 /               d=1
f-----i  |   f-----i      f-----i      f-----i              d=0
|`000`| /|   |`100`|      |`200`|      |`300`|      r=0
t-----i/ |   t-----j      t-----j      t-----j        
|  ...⊥..|   |  .-----.   |  .-----.   |  .-----.     
| /*012*/|   | / 112 /    | / 212 /    | / 312 /                d=2
|/*011*/ |   |/ 111 /     |/ 211 /     |/ 311 /               d=1
|-----|  |   |-----|      |-----|      |-----|              d=0
|`010`| /|   |`110`|      |`210`|      |`310`|      r=1
i-----i/ |   i-----i      i-----i      i-----i        
|  ,..⊥..i   |  .-----.   |  .-----.   |  .-----.   
| /*022*/|   | / 122 /    | / 222 /    | / 322 /                d=2
|/*021*/ |   |/ 121 /     |/ 221 /     |/ 321 /               d=1
|-----|  |   |-----|      |-----|      |-----|              d=0
|`020`| /    |`120`|      |`220`|      |`320`|      r=2
L-----i/     L-----j      L-----i      L-----J         
⊕    ⊕     ⊕     ⊕     ⊕     ⊕     ⊕    ⊕


e.g. 
M[x][y][z]
M[c][r][d]
M[1][1][1] = `x + y*Y + z*Z`




000,001,002 | 100,101,102 | 200,201,202 | 300,301,302






## ASCII MODELS


```
                 y
                 𐌣             z
                 |           ↗       
              3 -|         /          
                 |        /             
              2 -|      /               
                 |     /                
              1 -|   /                  
                 |  /                   
-|-------|-------|--|-------|-------|---→ x
-4      -2     0 |  1       3       5 
                 |
            -1  -|
                 |
            -2  -|
                 |
            -3  -|
```
MATRIX 3D



 c |
RoW|  c        c        c              
 l |  00       01       02          
---|-----------------------------
   |                             
   |      h        v        w      
   |    c        f        s        
r0 | `00`     `01`     `02`         
   |                             
r1 | `03`     `04`     `05`         
   |                             
r2 | `06`     `07`     `08`         

MATRIX 3D



ARRAY:
0. 1. 2. 3.  4. 5. 6. 7.  8. 9. 10. 11. 
9  4  b  2   a  1  8  7   0  5   3   6


CHECK:
Ma[0, 0] = A[0]
Ma[1, 0] = A[1]
Ma[2, 0] = A[2]
Ma[3, 0] = A[3]

Ma[0, 1] = A[4]
Ma[1, 1] = A[5]
Ma[2, 1] = A[6]
Ma[3, 1] = A[7] 

Ma[0, 2] = A[8]
Ma[1, 2] = A[9]
Ma[2, 2] = A[10]
Ma[3, 2] = A[11]



… ⋯ ⋮ ⋱ ⌜ ⌝ ¤ § · ⊻ √ ∝ ∟ ∫ 
𐌣 ☇ → ← ↓ ↑ ↗ ↘ ↙ ↖ ↔ ∞ ≈ ≌ ≠ ≤ ≥ ⥽ ∵ ∴ ± ∓ × ÷
⊕ ⊗ ≡ ⇔ ⇒ ⊢ ⊨ ╳ ∅ ∪ ∩ ⊆ ⊂ ⊃ ∈ ∉ ∋ ∀ ∃ ∄ ¬ ∨ ∧ ⊥ ⊤ 
♯ ＃  №

≤ ≥ ÷ ≈ ∞ ‼ ← ° √ ⁿ ² ∞ ≡ ±  
† ‡ ※ ¶ ¿ § ₪ ¤ ❖
℃ ℓ ℡ ƒ ฯ
Ω Å ㎏ ㎐ ㎒ ㎓




===============================================================

Translating 2D matrix, into a linear array
- 2D matrix of size `R*C` is translated into a linear array with `R*C` cols.
- `R` number of columns in the matrix       4
- `C` num of rows in the matrix             3
- matrix rows and columns both start at     0
- `i` iterates over matrix columns          i=0..3, `i=0..C--`
- `j` iterates over matrix rows             j=0..2, `j=0..R--`




* m[c][r] -> a[c]
* m[0][0] -> a[0]     1st col, 1st row: m[0][0] = 0
* m[0][1] -> a[1]     1st col, 2nd row
* m[0][2] -> a[2]     
* m[0][3] -> a[3]     
* m[0][y] -> a[0]




 c  o  l  s |  c  o  l  s | c   o   l   s
`0  1  2  3 |  4  5  6  7 | 8   9  10  11`     1 row
>0  1  2  3 |  0  1  2  3 | 0   1   2   3      3 x row
 9  4  b  2 |  a  1  8  7 | 0   5   3   6      cells




|0 1 2 3|4 5 6 7|8 9 a b|
|-------|-------|-------|
|9 4 b 2|a 1 8 7|0 5 3 6|

`c`: col iter
`c_l` (first col index), 0
`c_h` (last col index),  3
`C`   (num of cols), = `(c_h + 1 - c_l` 1+3-0 = 4
for `c` = 0`:c_l` to 3 `:c_h`

`r`: row iter
`r_f`: first row, 0
`c_l`: last row, 2 
`C` = `c_l - c_f` (num of cols), 2 - 0 = 2 rows
for `c` = `c_f` to `c_l` (for c = 0...3)

1. 2. 3. 4. 
 0  1  2  3   3+1 -  0 = 4
 1  2  3  4   4+1 -  1 = 4
-5 -4 -3 -2  -2+1 - -5 = 4 = -1 + 5 
getTotalColumns: `Hi+1 - Lo`


`M[c, r] = A[c + r*Ri]`
Ma[0, 0] = A[0]
Ma[1, 0] = A[1]
Ma[2, 0] = A[2]
Ma[3, 0] = A[3]

Ma[0, 1] = A[4]
Ma[1, 1] = A[5]
Ma[2, 1] = A[6]
Ma[3, 1] = A[7] 

Ma[0, 2] = A[8]
Ma[1, 2] = A[9]
Ma[2, 2] = A[10]
Ma[3, 2] = A[11]

(c , r)     matrix   (r     , c)
(c + r x R)   array  (r x R + c)
(0, 2)
(0 + 2*4) = 8



## Case 2: Infinite space, pacman-like-style
Going off of the screen in certian direction, you reappear at the opposite side of the table, moving in the opposite direction.


D4: `𐌣 → ↓ ←`, `NESW`, `LRUD`
d8: `𐌣 ↗ → ↘ ↓ ↙ ← ↖`, `N NE E SE S SW W NW`

```
        0 1 2 3 4 5 6
    NW        N        NE

0       ↖ . . 𐌣 . . ↗
1       . . . . . . .
2       . . . . . . .
3    W  ← . . . . . →  E
4       . . . . . . .
5       . . . . . . .
6       ↙ . . ↓ . . ↘

    SW        S        SE

. 0 1 2
0 ↖ 𐌣 ↗
1 ← + →
2 ↙ ↓ ↘


NW  N  NE
W   +   E
SW  S  SE

60°40'32"
```
