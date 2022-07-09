# CS :: PLT :: Language Features :: Software design tradeoffs

- Software design tradeoffs
- Programming language design tradeoffs
- Programming language design (PLD)
- PLD tradeoffs
- PLD patterns

Life is a series of trade-offs, let alone programming language design (PLD). In fact, in PLD, but also generally in CS, tradeoffs are a tool of the trade.

## Trade-the-fuck-off

A tradeoff (trade-off) is a situational decision that stems from changes made to one quality at the expence of another. Related properties come as inter dependent n-tuples, generalizations of the elementary 2-tuple i.e. a pair of dependent properties or opposite qualities of one property.

Often, a property comes as a pair of correlated but opposite qualities or quantities (mhuh huh tities mhuh hah).

More generally, a property with a tradeoff aspect may be represented as a set of correlated values, where a change in one value is immediately reflected in the other values in the set. For example, any point on a sphere consists of 3 such correlated values, x, y and z, that define a point in 3d space *constrained* to lie somewhere on the sphere (sphere to a _ is what a circle is to a disk). 

A unit circle, `x² + y² = 1`, has two correlated values, `x` and `y` that make up each point thatlies on the circle (circumference). A change in `x` is reflected in `y` (in the opposite way)
- at   0ᵒ `( 1, 0)`
- at  45ᵒ `( 0, 1)`
- at  90ᵒ `( 0, 1)`
- at 180ᵒ `(-1, 0)`
- at 270ᵒ `( 0,-1)`
- at 360ᵒ, `(1, 0)`, i.e. `x` is back to 1 and `y` to 0

r = 1
  x² + y² = 1
@ 0ᵒ
  1² + 0² = 1
@ 45ᵒ
  x² + y² = 1
  x = √(1 - y²)
  y = √(1 - x²)
@ 90ᵒ
  0² + 1² = 1


**impedance mismatche**

A unit sphere is defined by `x² + y² + z² = 1`.

- opposing polarities: increasing one decreases the other property
- opposing polarities: de/increasing one at the expence of another (others)

diminishing or losing one quality, quantity, or property of a set or design in return for gains in other aspects. 

In simple terms, a tradeoff is where one thing increases, and another must decrease. Tradeoffs stem from limitations of many origins. 

Tradeoffs also commonly refer to different configurations of a single item, such as the tuning of strings on a guitar to enable different notes to be played, as well as an allocation of time and attention towards different tasks. The concept of a tradeoff suggests a tactical or strategic choice made with full comprehension of the advantages and disadvantages of each setup. 


A space-time trade off or time-memory trade-off in computer science is a case where an algorithm or program trades increased space usage with decreased time. Here, space refers to the data storage consumed in performing a given task (RAM, HDD, etc), and time refers to the time consumed in performing a given task (computation time or response time).

In software engineering, architecture tradeoff analysis method (ATAM) is a risk-mitigation process used early in the software development life cycle.

In statistics and machine learning, the bias-variance tradeoff is the property of a model that the variance of the parameter estimated across samples can be reduced by increasing the bias in the estimated parameters.

A detection error tradeoff (DET) graph is a graphical plot of error rates for binary classification systems, plotting the false rejection rate vs. false acceptance rate. The x- and y-axes are scaled non-linearly by their standard normal deviates (or just by logarithmic transformation), yielding tradeoff curves that are more linear than ROC curves, and use most of the image area to highlight the differences of importance in the critical operating region.

* General design criteria
  - generality, range of applicability
  - reliability
    - robustness vs brittleness
  - cost
    - production cost
    - maintainance cost
  - maintainability
  - portability
    - implementability
    - machine independence
  - efficiency
  - simplicity
  - readability
    - user documentation of programs
    - block comments
    - embeddable (in)line comments
  - debugability
    - Clear and concise (info, diagnostic, warning, error) messages
  - discoverability (of APIs)


## PLD dimensions

* Factors of PLD
  - Modifiability
    change the way the program works later
  - Extensibility 
    add/remove functionality
  - Testability 
    structuring code to facilitate the ancient art of unit test
  - Verifiability 
    structuring code to facilitate the modern art of mathematical proof that it works correctly
- Performance 
- Scalability
  How well does the system scale to lots of traffic (Hint: Scalability is not the same as performance, although improved performance usually improves scalability.)
- Usability
  How easy is it for the end-user to use and leverage the resulting system
- Understandability
  How easy is it for developers to understand and leverage the system This is especially important for APIs. (Barry Jaspan referred to this as DX at one point.)
- Maintainability
  All software requires updating and bug-fixing. How easy is it to do that
- Expediency
  How long does it take to actually write the damned thing



* Programming principles




## Refs
