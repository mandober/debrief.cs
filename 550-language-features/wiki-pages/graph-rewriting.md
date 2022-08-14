# Graph rewriting

https://en.wikipedia.org/wiki/Graph_rewriting

*Graph rewriting* or *graph transformation* are the approaches and technics for creating a new graph out of an existing one using suitable algorithms.

Graph rewriting can be used as an abstraction of computation. 
The basic idea is that if the state of a computation 
can be represented as a graph, 
further steps in that computation 
can then be represented 
as transformation rules on that graph. 
Such rules consist of an original graph, 
which is to be matched 
to a subgraph in the complete state, 
and a replacing graph, 
which will replace the matched subgraph.

Formally, a graph rewriting system 
usually consists of 
a set of graph rewrite rules 
of the form `L → R`, 
with `L` being called *pattern graph* 
(or left-hand side) 
and `R` being called *replacement graph* 
(or right-hand side of the rule).

A graph rewrite rule is applied 
to the host graph 
by searching for an occurrence 
of the pattern graph 
(pattern matching, thus solving the subgraph isomorphism problem) 
and by replacing the found occurrence 
by an instance of the replacement graph. 
Rewrite rules can be further regulated 
in the case of labeled graphs, 
such as in *string-regulated graph grammars*.

Sometimes *graph grammar* is used 
as a synonym for graph rewriting system, 
especially in the context of formal languages; 
the different wording is used 
to emphasize the goal of constructions, 
like the enumeration of all graphs 
from some starting graph, 
i.e. the generation of a graph language - 
instead of simply transforming 
a given state (*host graph*) into a new state.

## Contents

- Graph rewriting approaches
  - Algebraic approach
  - Determinate graph rewriting
  - Term graph rewriting
- Classes of graph grammar and graph rewriting system
- Implementations and applications


## Graph rewriting approaches

Graph rewriting approaches:
- Algebraic approach
- Determinate graph rewriting
- Term graph rewriting

### Algebraic approach

The algebraic approach to graph rewriting is based upon category theory.

The algebraic approach is further divided into sub-approaches, including:
- double-pushout (DPO)
- single-pushout (SPO)
- sesqui-pushout
- pullback



### Determinate graph rewriting

Yet another approach to graph rewriting, known as determinate graph rewriting, came out of logic and database theory. In this approach, graphs are treated as database instances, and rewriting operations as a mechanism for defining queries and views; therefore, all rewriting is required to yield unique results (up to isomorphism), and this is achieved by applying any rewriting rule concurrently throughout the graph, wherever it applies, in such a way that the result is indeed uniquely defined.

### Term graph rewriting

**Term graph rewriting** involves the processing (or transformation) of term graphs, aka *abstract semantic graphs*, by a set of syntactic rewrite rules.

Term graphs are a prominent topic in PL research since term graph rewriting rules are capable of formally expressing a compiler's operational semantics.

Term graphs are used as abstract machines capable of modelling chemical and biological computations as well as graphical calculi such as concurrency models.

Term graphs can perform automated verification and logical programming since they are well-suited to representing quantified statements in first order logic.

Symbolic programming software is another application for term graphs, which are capable of representing and performing computation with abstract algebraic structures such as groups, fields and rings.

## Classes of graph grammar and graph rewriting system

Graph rewriting systems naturally group into classes according to the kind of representation of graphs that are used and how the rewrites are expressed.

The *term graph grammar*, otherwise equivalent to *graph rewriting system* or *graph replacement system*, is most often used in classifications.

Some common types are:
- *Attributed graph grammars*, typically formalised using either the single-pushout approach or the double-pushout approach to characterising replacements, mentioned in the above section on the algebraic approach to graph rewriting.
- *Hypergraph grammars*, including as more restrictive subclasses port graph grammars, linear graph grammars and interaction nets.

## Implementations and applications

Graphs are an expressive, visual and mathematically precise formalism for modelling of objects (entities) linked by relations; objects are represented by nodes and relations between them by edges. Nodes and edges are commonly typed and attributed. Computations are described in this model by changes in the relations between the entities or by attribute changes of the graph elements. They are encoded in graph rewrite/graph transformation rules and executed by graph rewrite systems/graph transformation tools.

* Tools that are application domain neutral
* Tools that solve software engineering tasks (mainly MDA) with graph rewriting
* Mechanical engineering tools
* Artificial Intelligence/Natural Language Processing
* Computer programming language
  - Clean is implemented using graph rewriting


## Refs

* Graph matching - Wikipedia
https://en.wikipedia.org/wiki/Graph_matching

* Graph database - Wikipedia
https://en.wikipedia.org/wiki/Graph_database

* GReAT - Wikipedia
https://en.wikipedia.org/wiki/GReAT

* VIATRA - Wikipedia
https://en.wikipedia.org/wiki/VIATRA

* OpenCog - Wikipedia
https://en.wikipedia.org/wiki/OpenCog

* Hypergraph - Wikipedia
https://en.wikipedia.org/wiki/Hypergraph

* Clean (programming language) - Wikipedia
https://en.wikipedia.org/wiki/Clean_(programming_language)


## Links

* The Attributed Graph Grammar System: 
A Development Environment for Attributed Graph Transformation Systems
https://www.user.tu-berlin.de/o.runge/agg/

* Verites/verigraph: Software specification and verification system based on graph rewriting
https://github.com/Verites/verigraph/

* What is GP 2? | GP 2
https://uoycs-plasma.github.io/GP2/

* eMoflon Project Site
https://emoflon.org/

* Privacy error
https://www.emorf.org/

* fujaba.de
http://www.fujaba.de/

* Apache TinkerPop
https://tinkerpop.apache.org/gremlin.html

* Henshin | The Eclipse Foundation
https://www.eclipse.org/henshin/

* SE@RWTH
https://www.se-rwth.de/

* Graphsynth by DesignEngrLab
http://designengrlab.github.io/GraphSynth/

* RelEx Dependency Relationship Extractor - OpenCog
https://wiki.opencog.org/w/RelEx_Dependency_Relationship_Extractor

* TERMGRAPH - Computing with Terms and Graphs
http://www.termgraph.org.uk/

* Handbook of Graph Grammars and Computing by Graph Transformation
https://www.worldscientific.com/worldscibooks/10.1142/4180#t=aboutBook

* Graph grammars with string-regulated rewriting - ScienceDirect
https://www.sciencedirect.com/science/article/pii/S0304397511005925?via%3Dihub

* Soley Studio | Designed for Engineering Intelligence
https://archive.ph/20150317152250/https://www.soley-technology.com/en/pr-soley-studio
