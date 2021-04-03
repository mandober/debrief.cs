# Entropy

## Entropy in information theory

In information theory, the entropy of a random variable is the average level of information (surprise, uncertainty) inherent in the variable's possible outcomes.

The concept of information entropy was introduced by Claude Shannon in his 1948 paper "A Mathematical Theory of Communication", and is sometimes called *Shannon entropy* in his honour.

As an example, consider a biased coin with probability p of landing on heads and probability 1-p of landing on tails. The maximum surprise is for p = 1/2, when there is no reason to expect one outcome over another, and in this case a coin flip has an entropy of one bit. The minimum surprise is when p = 0 or p = 1, when the event is known and the entropy is zero bits. Other values of p give different entropies between zero and one bits.

What is te minimum number of yes/no question you have to ask to correctly predict the next symbol?

## Entropy in computing
In computing, entropy is the randomness collected by an OS or app for use in cryptography or other uses that require random data. This randomness is often collected from hardware sources (variance in fan noise or HDD), either pre-existing ones such as mouse movements or specially provided randomness generators. A lack of entropy can have a negative impact on performance and security.

## References

https://en.wikipedia.org/wiki/Information_entropy
https://en.wikipedia.org/wiki/Entropy_(computing)
https://en.wikipedia.org/wiki/Information_theory



---

`L = {a,b,c,d}` alphabet of symbols

`m1`: probability of a symbol occuring = 0.25 for all symbols i.e.:
`m1 = {a:0.25, b:0.25, c:0.25, d:0.25}`

`m2`: probabilities of a symbol occuring
`m2 = {a:0.50, b:0.25, c:0.125, d:0.125}`

Which machine is producing more information? i.e. 

What is te minimum number of yes/no question you have to ask to correctly predict the next symbol?

For m1 it is 2 questions:
```
(symbol == AB)
  ? { (symbol == A) ? a : b }
  : { (symbol == C) ? c : d }
```
e.g.:
1. Is it A or B?
2. Is it C?

We always have to ask 2 questions to predict the symbol correctly.
**So, the uncertainty of m1 is 2 questions per symbol**. entropy H = 2q/s

---
For m1, we have to ask 1-3 questions.
```
1. (symbol == "A") ? a 
2.  : (symbol == "B") ? b
3.      : (symbol == "C") ? c : d
```
e.g.
1. Is it A? (A=50%)
2. Is it B? (B=25%)
3. Is it C? (C=D=12.5%)

So, *on average*, how many question do you have to ask to predict the next symbol of m2?

We can construct such machine by placing pegs that deflect a ball, with equal probability, either to left or to the right:

```
   o
A      o
    B      o
        C     D
```

* To get A, that m2 generates 50% of the time, we need 1 peg (1 question) that deflects the ball to the "A" box half of the time.
* To get B, we need 2 pegs/questions.
* To get C or D we need 3 pegs/questions.

So, taking a weighted average as:
```
m2: #bounces = Pa*1 + Pb*2 + Pc*3 + Pd*3
m2: #bounces = 0.5*1 + 0.25*2 + 0.125*3 + 0.125*3
m2: #bounces = 0.5 + 0.5 + 0.375 + 0.375
m2: #bounces = 1.75
```
The expected number of bounces is equal to the sum of weighted probabilities of each outcome.
The result is 1.75 (bounces/questions)!

So, *on average*, how many question do you have to ask to predict the next symbol of m2? **1.75**

As opposed to **2**, that is the average for m1.
```
m1: #bounces = Pa*2 + Pb*2 + Pc*2 + Pd*2
m1: #bounces = 0.25*2 + 0.25*2 + 0.25*2 + 0.25*2
m1: #bounces = 2
```

A machine requires N pegs to generate a symbol, while guessing an unkown symbol requires N questions.

Each question, like a peg, cuts in half the remaining number of possibilities.

So, if we need to guess 100 symbols, we'd ask 200 question on average for m1, and 175 question on average for m2.

> Therefore, m2 is producing **LESS INFORMATION**! m2 creates less uncertainty (or surprise) about its output.

---

C. Shannon calls the measure of average uncertainty **ENTROPY**, and denotes it as `H`. He chooses to call the unit of entropy **bit**.

`H = \sum^n_{i=1} p_i \times NumOfBounces`
Entropy, H, is the summation for each symbol of the probability of that symbol times the number of bounces.

`NumOfBounces = log_2{NumOfOutcomes}`
The number of bounces is logarithm, base two, of the number of oucomes at that level.

`NumOfOutcomes = 1 / p`
The number of outcomes at a level is 1 divided by the number of probability of that outcome occuring.


---

All together now:
`H = \sum^n_{i=1} p_i \times log_2{1/p_i}`

**Entropy**, `H`, is the summation, for each symbol, of the probability of that symbol times the logarithm base two of 1 over the probability of that symbol.


which C.Shannon writes (equaly) as:
`H = - \sum^n_{i=1} p_i \times log_2{p_i}`
(negates the summation to get rid of the fraction)

Entropy is maximum when all outcomes are equally likely.

Any time you move away from equally likely outcomes, or introduces predictability, the entropy must decrease.

When entropy of an information source declines, we can pose fewer questions to get the outcome.

The **bit** is a measure of information (or a measure of surprise).
