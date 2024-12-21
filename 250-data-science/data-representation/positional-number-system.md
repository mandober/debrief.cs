# Positional number systems

- binary
- octal
- decimal
- hexadecimal

elements
- base, B
- radix
- face value
- digits
- places:
  - ones, twos, fours, eigths, …
  - ones, tens, hundreds, …
  - ones, 16s, 256s, …

base-n number system
- base, B
  - min base, Bₘᵢₙ = 2
- digits, D = {0, 1, …, B - 1}
  - digit, dᵢ, one element in D
  - min digit, dₘᵢₙ = 0
  - max digit, dₘₐₓ = B - 1
- Σ {i=0..B-1} dᵢBⁱ
- (10)ʙ always denotes the base number `B`
  - (10)₂  is  2 in base-2
  - (10)⏨  is 10 in base-10
  - (10)₁₆ is 16 in base-16
  - (10)ʙ  is  B in base-B
- in any base, 0 always denotes 0
- in any base, 1 always denotes 1
- (x)ₙ = (x)ₘ iff x 
- base-2 digits:  0, 1
- base-4 digits:  0, 1, 2, 3
- base-6 digits:  0, 1, 2, 3, 4, 5
- base-8 digits:  0, 1, 2, 3, 4, 5, 6, 7
- base-10 digits: 0, 1, 2, 3, 4, 5, 6, 7, 8, 9
- base-12 digits: 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, a, b
- base-14 digits: 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, a, b, c, d
- base-16 digits: 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, a, b, c, d, e, f
- base-18 digits: 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, a, b, c, d, e, f, g, h
- base-20 digits: 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, a, b, c, d, e, f, g, h, i, j


{0..9}{a..z}


- (7)⏨ = (7)₉ = (7)₈ = (7)₇ ≠ (7)₆ > (7)₅ > (7)₄ > (7)₃ > (7)₂


- (7)⏨ = (7)₈


base-16
- base, B = 16
- digits, D = {0, 1, …, a, b, c, d, e, f}
- digit, dᵢ, one element in D 
- min digit, dₘᵢₙ = 0
- max digit, dₘₐₓ = B - 1 = (16)⏨ - 1 = (15)⏨ = f
- Σ {i=0..9} dᵢ10ⁱ

base-10
- base, B = 10
- digits, D = {0, 1, …, 9}
- digit, dᵢ, one element in D 
- min digit, dₘᵢₙ = 0
- max digit, dₘₐₓ = 10 - 1 = 9
- Σ {i=0..9} dᵢ10ⁱ

Σ {i=0..9} dᵢ10ⁱ = 
  (i=0) d₀10⁰ +
  (i=1) d₁10¹ +
  (i=2) d₂10² +
  …           +
  (i=n) dₙ10ⁿ



(gen, B=n) … + d₃B³ + d₂B² + d₁B¹ + d₀B⁰
(hex,B=16) … + d₃16³ + d₂16² + d₁16¹ + d₀16⁰
(dec, B=10) … + d₃10³ + d₂10² + d₁10¹ + d₀10⁰
(bin, B=2) … + d₃2³ + d₂2² + d₁2¹ + d₀2⁰
(oct, B=8) … + d₃8³ + d₂8² + d₁8¹ + d₀8⁰
