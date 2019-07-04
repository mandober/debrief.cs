# Algorithmic Complexity


## Growth

Growth of the parts of *CUBE*
with radius of r cm, then:                  growth:
   heigth:      h = r*2 cm      2 x h       linear (const are ignored: mult by 2)
  one face:     f = h^2             h*h     quadratic
   surface:     s = f*6 cm2     6 x h*h     quadratic (const are ignored: mult by 6)
   volume:      v = h^3 cm3     h x h*h     cubic



          h = 2*r     f = h^2     s = f*6        v = h^3
rad (cm)| height(cm)| face (cm2)| surface (cm2)| volume (cm3)
0.5     | 1         | 1         |  6           | 1
1       | 2         | 4         | 24           | 8
1.5       3           9           56            27
2         4          16          108            64
2.5       5          25          150           125
3         6          36          216           216
3.5       7          49          294           343
4         8                                       
4.5       9                                         
5        10                                       
5.5      11                                         


height    surface    volume     
1           1           1
2  +1       4  +3       8  +7
3  +1       9  +5      27  +19
4  +1      16  +7      64  +37
5  +1      25  +9     125  +61
6  +1      36  +11    216  +91


l       q        c
1       1        1
2       4       16
3       9       27
4      16       64
5      25      125
6      36      216
7      49      343
8      64      512
9      81      729

10    100     1000
11    121     1331
12    144     1728
13    169     2197
14    196     2744

15    225     3375
16    256
17    289
18    324
19    361
20    400



a = first digit
_ = one or more digits
b = last digit 


ab = 10..14 =>   a      _     b
ab x ab     => 1:a    2:b*2   3:b^2

      a     c           b            acb
10|   1 ::  0 (=0*2)::  0 (=0^2)   | 100
11|   1 ::  2 (=1*2)::  1 (=1^2)   | 121
12|   1 ::  4 (=2*2)::  4 (=2^2)   | 144
13|   1 ::  6 (=3*2)::  9 (=3^2)   | 169
14|   1 :: 12 (=4*2):: 16 (=4^2)   | 196


ab      a   b*2   b^2 
14^2 => 1     8 + 1 6 => 1|8|16    => 1|9|6 => 196
15^2 => 1 + 1 0 + 2 5 => 1+1|0+2|5 => 2|2|5 => 225
16^2 => 1 + 1 2 + 3 6 => 1+1|2+3|6 => 2|5|6 => 256
17^2 => 1 + 1 4 + 4 9 => 289
18^2 => 1 + 1 6 + 6 4 => 2|12|4 -> 3|2|4 = 324








