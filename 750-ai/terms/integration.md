# Integration

https://www.youtube.com/watch?v=WsQQvHm4lSw

Integration is opposite of derivation.

```
⎛          xⁿᐩ¹
⎢ xⁿ dx = ----- + c
⎠          n + 1


d/dx f = fʹ       d/dx f(x) = fʹ(x)
∫ fʹ   = f        ∫ fʹ(x)   = f(x)
```

We add a constant `c` since any a derivative of a (any) constant is 0.

>The difference between a **definite integral** and an **indefinite integral** is that a definite integral is bounded (has the lower and upper limit) and it gives us a *number*, whereas the indefinite integral is unbounded and it gives us a *function*.

```
define integral gives a number       indefine integral gives a function
⎛b                                   ⎛
⎢  R(t) dt                           ⎢  R(t) dt
⎠a                                   ⎠
```


## Example

The function `R(t) = 0.5t + 20` represents the rate of water flowing into a tank, where `R(t)` represents the number of liters flowing in per minute, and `t` is the time in minutes. How much water will accumulate in the tank from t=20 to t=100?

*Accumulation implies integration*! So, the net chanage of water can be calculated using a definite integral:

```
R(t) = 0.5t + 20
from t=20 to t=100

⎛b           ⎛¹⁰⁰                  
⎢  R(t) dt = ⎢   (0.5∙tʹ + 20) dt =
⎠a           ⎠²⁰      ↓             
                      ↓
                      ↓
find integral for (0.5∙tʹ + 20)
                      ↓
                      ↓
               t²         t¹                  
0.5 tʹ = 0.5 ----- + 20 ----- =  0.25 t² + 20t
               2          1                   

then evaluate it from 20 to 100

                       ⎢¹⁰⁰
0.5 tʹ = 0.25 t² + 20t ⎢   
                       ⎢₂₀ 
```

Evalute the obtained integrated function `0.25t² + 20t` at 100 through 20.

1. plugging in 100 into 0.25t² + 20t, we get 0.25∙100² + 20∙100 = 4,500
2. plugging in  20 into 0.25t² + 20t, we get  0.25∙20² +  20∙20 =   500
3. calculate the difference of (1) and (2),         4,500 - 500 = 4,000

Evaluting the obtained integrated function `0.25t² + 20t` at 100 through 20:

```
[0.25(100)² + 20(100)] - [0.25(20)² + 20(20)] =
[0.25(10,000) + 2,000] - [0.25(400) + 400] =
[2,500 + 2,000] - [100 + 400] =
4,500 - 500 =
4,000
```

The answer: 4,000 liters of water has accumulated during that time (from t=20 to t=100 minute).




















∫

⎛ 
⎢ 
⎠ 

⎛ 
⎠ 
