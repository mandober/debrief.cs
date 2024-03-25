---
downloaded:       2021-12-11
page-url:         https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary
page-title:       Pr4 UG mi Glossary - Protege Wiki
article-title:    Pr4 UG mi Glossary - Protege Wiki
---
# Pr4 UG mi Glossary - Protege Wiki

Protege 4 uses a number of technical terms.
It also uses some common terms (eg, view) in uncommon ways.
This page provides short definitions of these terms,
along with links to related definitions and other resources.
Protege 4 uses a number of technical terms. It also uses some common terms (eg, view) in uncommon ways. This page provides short definitions of these terms, along with links to related definitions and other resources.

Like the rest of the guide, this page is a perennial "Work In Progress". If you don't find a needed definition (or don't find the current definition to be useful), [speak up!][1]

### Format Notes

Each entry in the Glossary consists of a textual description, often supplemented by a quote from a relevant document. Following the description, the "See Also" section provides links to related resources. This section contains one to three subsections, containing (respectively) links or references to:

-   terms in the Glossary
-   pages in the Protege 4 Users Guide
-   external resources (eg, books, web pages)

Many of the external resources are located in [Wikipedia][2]; the notation "(WP)" is used to indicate this fact.

### Editing

While adding entries, please update the Alphabetical Summary. Otherwise, readers may not be able to find your entry.

The entries on this page are heavily linked by other pages in the Users Guide and elsewhere. Do __not__ change the heading on an entry unless you have checked this with the Protege 4 developers!

### Alphabetical Summary

ABC - [Abstraction][3], [Ancestor Class][4], [Annotation][5], [Anonymous Class][6], [API][7], [Asserted][8], [Assertion][9], [Asymmetric Property][10], [Axiom][11], [BeanShell][12], [Characteristic][13], [Class][14], [Class Expression][15]

DEF - [Data Property][16], [Datatype][17], [Defined][18], [Descendant Class][19], [Description][20], [Description Logic][21], [Dialog Box][22], [Disjoint Class][23], [Disjoint Property][24], [Domain][25], [Entailment][26], [Entity][27], [Enumeration][28], [Equivalent Class][29], [Equivalent Property][30], [FaCT++][31], [Functional Property][32]

GHI - [General Axiom][33], [HERAKLES][34], [HermiT][35], [Hierarchy][36], [Individual][37], [Induction][38], [Inference][39], [Inferred][40], [Inheritance][41], [Inherited][42], [Instance][43], [Intersection][44], [Inverse Functional Property][45], [Inverse Property][46], [Irreflexive Property][47]

JKL - [Java][48], [KRSS2 Syntax][49], [LaTeX][50], [Lattice][51]

MNO - [Manchester OWL Syntax][52], [Member][53], [Menu][54], [Metrics][55], [NaCTeM][56], [Negative Assertion][57], [Nothing][58], [Object Property][59], [OBO Flat File Format][60], [OntoGraf][61], [Ontology][62], [Open World Assumption][63], [OPPL][64], [OWL][65], [OWL DL][66], [OWLDoc][67], [OWL Functional Syntax][68], [OWL/XML][69], [OWLViz][70]

PQR - [Pellet][71], [Plugin][72], [Property][73], [Property Chain][74], [Query][75], [Range][76], [RDF][77], [RDFS][78], [RDF/XML][79], [Reasoner][80], [Refactoring][81], [Reflexive Property][82], [Relation][83], [Rendering][84], [Restriction][85], [Rule][86]

STU - [Semantic Web][87], [Sibling Class][88], [SKOS][89], [SPARQL][90], [Subclass][91], [Subproperty][92], [Super Property][93], [Superclass][94], [SWRL][95], [Symmetric Property][96], [Tab][97], [Tag Cloud][98], [TerMine][99], [Thing][100], [TONES][101], [Tool][102], [Transitive Property][103], [Triple Store][104], [Turtle][105], [Type][106], [Union][107], [URI][108], [URL][109]

VWX - [View][110], [Watson][111], [XML][112]

YZ ...

### A, B, C

#### Abstraction

Abstraction is critical to defining class hierarchies in Protege 4; every superclass is an abstraction (ie, generalization) of its subclass(es):

Abstraction is the process or result of generalization by reducing the information content of a concept or an observable phenomenon, typically in order to retain only information which is relevant for a particular purpose. For example, abstracting a leather soccer ball to a ball retains only the information on general ball attributes and behaviour.

\-- [Abstraction (WP)][113]

See also:

[Class][114], [Hierarchy][115], [Subclass][116], [Superclass][117]

#### Ancestor Class

An ancestor class resides at a higher (ie, more abstract) point in the class hierarchy. It could be a superclass, a superclass of a superclass, etc. In the Pizza Ontology, Food is an ancestor class of Pizza, NamedPizza, and Margherita.

See also:

[Abstraction][118], [Class][119], [Descendant Class][120], [Hierarchy][121], [Sibling Class][122], [Subclass][123], [Superclass][124]

[Pizza Ontology][125]

#### Annotation

Annotation properties (commonly referred to as "annotations") allow arbitrary information to be added to selected portions of an OWL ontology. Although some annotations are specific to a given ontology, a number of annotations are in general use.

See also:

[Ontology][126], [OWL][127], [Property][128]

[Annotation Concept][129]

#### Anonymous Class

An anonymous class has a description, but no name. Anonymous classes (ACs) are used throughout OWL ontologies. Any class expression (eg, enumeration, intersection, restriction, union) is an anonymous class.

See also:

[Class][130], [Class Expression][131], [Description][132], [Ontology][133], [OWL][134]

[Protege 4.x Anonymous Classes][135]

#### API

An API provides a defined way for an application (ie, program) to access a set of functionality:

An application programming interface (API) is an interface in computer science that defines the ways by which an application program may request services from libraries and/or operating systems. An API determines the vocabulary and calling conventions the programmer should employ to use the services. It may include specifications for routines, data structures, object classes, and protocols used to communicate between the requesting software and the library.

\-- [Application programming interface (WP)][136]

Protege 4, in particular, is basically a framework that supports interactive access to the OWL API.

See also:

[OWL API][137]

[OWL API][138]

#### Asserted

Information in Protege 4 ontologies can be asserted (ie, declared by an assertion) or inferred (ie, calculated by means of an inference). The Asserted Class Hierarchy view displays the results of all assertions. The Inferred Class Hierarchy view adds the results of inferences.

See also:

[Class][139], [Assertion][140], [Hierarchy][141], [Inference][142], [Inferred][143]

[Class Hierarchy view][144], [Class Hierarchy (inferred) view][145]

#### Assertion

An assertion is an axiom that declares something about one or more concrete objects in the class hierarchy. There are various forms of assertions, including:

-   AnnotationAssertion
-   ClassAssertion
-   DataPropertyAssertion
-   NegativeDataPropertyAssertion
-   NegativeObjectPropertyAssertion
-   NegativePropertyAssertion
-   ObjectPropertyAssertion

See also:

[Asserted][146], [Axiom][147] [Class][148], [Hierarchy][149]

[OWL 2 Web Ontology Language Primer][150]

#### Asymmetric Property

An asymmetric property is an object property that defines an asymmetric relationship:

Asymmetric often means, simply: not symmetric. In this sense an asymmetric relation is a binary relation which is not a symmetric relation. In some texts, the word is given the following stronger definition. A relation R on X is asymmetric in the following sense: For all a and b in X, if a is related to b, then b is not related to a.

\-- [Asymmetric relation (WP)][151]

Protege 4 follows the first of these interpretations: "asymmetric" means there exists a and b where R(a,b) and ! R(b,a). For example, assume that Bill is Sue's brother (ie, Sue is Bill's sister). The "brother of" property is asymmetric in this case because Sue is not Bill's brother.

See also:

[Characteristic][152], [Object Property][153], [Property][154], [Relation][155], [Symmetric Property][156]

#### Axiom

An axiom is a "piece of knowledge" (ie, a fact or rule):

... in order to formulate knowledge explicitly, it is useful to assume that it consists of elementary pieces that are often referred to as statements or propositions. Statements like “it is raining” or “every man is mortal” are typical examples for such basic propositions. In OWL 2, these basic “pieces of knowledge” are called axioms. Indeed, every OWL 2 ontology is – from an abstract viewpoint – essentially just a collection of axioms. It is characteristic for axioms that they can be said to be true or false given a certain state of affairs.

\-- [OWL 2 Web Ontology Language Primer][157]

See also:

[General Axiom][158], [Rule][159]

#### BeanShell

BeanShell is an interpreted programming environment that can be embedded into Java programs. It supports both Java syntax and a simplified "scripting" syntax. BeanShell offers a quick and convenient way to extend Protege 4.

See also:

[Java][160],

[BeanShell (WP)][161], [www.beanshell.org][162]

#### Characteristic

Properties can have any of several characteristics (eg, Functional, Reflexive, Symmetric, Transitive) which affect their inference behavior, etc.

See also:

[Asymmetric Property][163], [Functional Property][164], [General Axiom][165], [Inference][166], [Inverse Property][167], [Inverse Functional Property][168], [Irreflexive Property][169], [Property][170], [Reflexive Property][171], [Symmetric Property][172], [Transitive Property][173]

[Property Characteristics][174]

#### Class

A class describes and (generally) names a level in an abstraction hierarchy (technically, a lattice), headed by the Thing class. The classes Food, Pizza, NamedPizza, and Margherita, for example, are used in the Pizza Ontology. A given Margherita pizza might therefore be an individual (ie, instance) of the class Margherita. By inheritance, it would also be a member of the classes Food, Pizza, etc.

Protege's classes and instances are very similar to those used in object-oriented programming. However, object-oriented classes are used to generate objects and methods that model (as opposed to simply describing) items of interest.

See also:

[Abstraction][175], [Ancestor Class][176], [Anonymous Class][177], [Descendant Class][178], [Disjoint Class][179], [Equivalent Class][180], [Hierarchy][181], [Individual][182], [Inheritance][183], [Instance][184], [Lattice][185], [Thing][186], [Sibling Class][187], [Subclass][188], [Superclass][189]

[Pizza Ontology][190]

[Class (WP)][191], [Object-oriented programming (WP)][192], [Objects (WP)][193]

#### Class Expression

Class expressions are commonly used (eg, in Manchester Syntax) to define classes in terms of other classes. They use operations such as enumeration, intersection, restriction, and union. For example, in the Pizza Ontology, a MeatyPizza is defined by the expression Pizza and hasTopping some MeatTopping. That is, the intersection of the Pizza class with the restriction hasTopping some MeatTopping.

See also:

[Class][194], [Enumeration][195], [Intersection][196], [Manchester OWL Syntax][197], [Restriction][198], [Union][199]

[Pizza Ontology][200]

### D, E, F

#### Data Property

Datatype properties, also known as data properties, relate objects to data values, rather than other objects. These values are defined in terms of a datatype (eg, date, integer).

See also:

[Datatype][201], [Object][202], [Property][203]

[Datatypes][204]

#### Datatype

A datatype specifies the type of data (eg, date, integer) that may be used as the value for a data property.

See also:

[Data Property][205]

[Datatypes][206]

#### Defined

#### Descendant Class

A descendant class resides at a lower (ie, more specific) point in the class hierarchy. It could be a subclass, a subclass of a subclass, etc. For example, in the Pizza Ontology, Pizza, NamedPizza, and Margherita are descendant classes of Food.

See also:

[Ancestor Class][207], [Class][208], [Sibling Class][209], [Subclass][210], [Superclass][211]

[Pizza Ontology][212]

#### Description

In Protege 4, assorted items are defined by descriptions. The exact nature of the descriptions that can be used depend on the type of the item (eg, class, data or object property, individual) and the Description Logic that is in use.

See also:

[Class][213], [Description Logic][214], [Individual][215], [Property][216]

Description Views: [Class][217], [Data Property][218], [Individual][219], [Object Property][220]

[Class descriptions][221]

#### Description Logic

Description Logic, a subset of first order predicate logic, is the formal basis for Protege 4's descriptions:

Description logics (DL) are a family of knowledge representation languages which can be used to represent the concept definitions of an application domain (known as terminological knowledge) in a structured and formally well-understood way. The name description logic refers, on the one hand, to concept descriptions used to describe a domain and, on the other hand, to the logic-based semantics which can be given by a translation into first-order predicate logic. Description logic was designed as an extension to frames and semantic networks, which were not equipped with formal logic-based semantics. They form a middle ground solution: including some more expressive operations than propositional logic and having decidable or more efficient decision problems than first order predicate logic.

\-- [Description Logic (WP)][222]

See also:

[Description][223]

[Description Logic (WP)][224], [Description Logics][225]

"The Description Logic Handbook: Theory, Implementation and Application" ([ISBN 0521781760][226])

#### Dialog Box

A dialog box (aka dialog) is a modal window presented to the user to present information, accept choices or confirmations, etc.

See also:

[Dialog box (WP)][227]

#### Disjoint Class

If two (or more) classes are disjoint, they cannot have any members in common. For example, in the Pizza Ontology, NonVegetarianPizza and VegetarianPizza are disjoint classes.

See also:

[Class][228], [Equivalent Class][229]

[Pizza Ontology][230]

[Class Disjointness][231], [Disjoint Classes][232]

#### Disjoint Property

If two (or more) properties are disjoint, they cannot apply to the same pairs of individuals. For example, ancestor and descendant are disjoint properties.

See also:

[Characteristic][233], [Disjoint Class][234], [Property][235]

#### Domain

A property defines a relation from objects in its Domain to objects in its Range.

See also:

[Property][236], [Range][237], [Relation][238]

[Domain and Range Restrictions][239]

#### Entailment

This is another way of saying "inferred axiom".

See also:

[Axiom][240], [Inferred][241]

[Entailment (WP)][242]

#### Entity

In Protege 4, an entity is something (eg, a class or individual) that has a unique identity and (commonly) a URI. Entities can be used in statements such as axioms, properties, queries, etc.

See also:

[Axiom][243], [Class][244], [Individual][245], [Ontology][246], [Property][247], [Query][248], [URI][249]

[Entity Declarations][250], [Entity-relationship model (WP)][251]

#### Enumeration

In Protege 4, an enumeration is a class expression in which all of the possibilities are enumerated (ie, listed). For example, in the Pizza Ontology, the definition for Country uses the enumeration {France,America,Italy,England,Germany}.

See also:

[Class Expression][252]

[Pizza Ontology][253]

#### Equivalent Class

Asserting that two classes are equivalent (eg, by a property restriction) allows a reasoner to make related inferences. For example, if we assert that "a person is happy exactly if all their children are happy", a reasoner might determine that (by induction) all of a happy individual's descendants are happy.

See also:

[Assertion][254], [Class][255], [Descendant\_Class][256], [Equivalent Property][257], [Induction][258], [Inference][259], [Ontology][260], [Property][261], [Reasoner][262], [Restriction][263]

[Equivalence between Classes and Properties][264], [Property Restrictions][265]

#### Equivalent Property

Asserting that two properties are equivalent allows a reasoner to use one property as if it were the other. For example, we might define hasAge in one ontology as being equivalent to age in another.

See also:

[Assertion][266], [Equivalent Class][267], [Inference][268], [Ontology][269], [Property][270], [Reasoner][271]

[Equivalence between Classes and Properties][272], [Ontology Management][273]

#### FaCT++

FaCT++ is a third-party semantic reasoner (and rendering format), used by Protege 4 via a plugin. This reasoner, written in C++, was developed at the University of Manchester.

See also:

[HERAKLES][274], [HermiT][275], [Pellet][276], [Plugin][277], [Reasoner][278], [Reasoner - FaCT++][279], [Rendering][280]

[FaCT++][281], [Semantic reasoner (WP)][282]

#### Functional Property

A functional property is a property that can only hold a single value for a given individual. For example, Bill's age is a functional property because Bill can only have a single age at a given point in time.

See also:

[Characteristic][283], [Inverse Functional Property][284], [Property][285]

[FunctionalProperty][286]

### G, H, I

#### General Axiom

See also:

[Axiom][287]

#### HERAKLES

HERAKLES is a reasoning broker framework for OWL (Web Ontology Language) reasoning systems.

See also:

[HermiT][288], [Inferred][289], [OWL][290], [Reasoner][291]

[FaCT++][292], [HERAKLES][293], [HERAKLES Plugin][294], [Inference (WP)][295], [Inference engine (WP)][296], [Pellet][297], [Semantic reasoner (WP)][298]

#### HermiT

HermiT is a third-party semantic reasoner (and rendering format), used by Protege 4 via a plugin. This reasoner, written in Java, was developed at Oxford University.

See also:

[HERAKLES][299], [Pellet][300], [Plugin][301], [Reasoner][302], [Reasoner - HermiT][303], [Rendering][304]

[HermiT][305], [Semantic reasoner (WP)][306]

#### Hierarchy

In Protege 4, all classes are required to reside in an abstraction (ie, "is a", containment) hierarchy (technically, a lattice), headed by the Thing class. For example, in the Pizza Ontology, any member of the class Margherita "is a" member of the class NamedPizza (and, by inheritance, the classes Pizza, Food, DomainConcept, and Thing).

Other types of hierarchies are possible. For example, it would be possible to define a "has a" hierarchy where a Pizza is defined as having a PizzaBase and one or more instances of PizzaTopping. However, Protege 4 provides no explicit support for this.

See also:

[Abstraction][307], [Ancestor Class][308], [Descendant Class][309], [Inheritance][310], [Lattice][311], [Subclass][312], [Superclass][313], [Thing][314]

[Pizza Ontology][315]

[Containment hierarchy (WP)][316]

#### Individual

An individual is a member (ie, instance) of a class. For example, in the Pizza Ontology, you might order a pizza of the class Margherita, but the pizza you receive would be an an instance of the class.

See also:

[Class][317], [Instance][318], [Member][319]

[Pizza Ontology][320]

#### Induction

Induction uses logical inference to proceed from known facts to general conclusions.

Induction, also known as inductive reasoning or inductive logic, is a type of reasoning which involves moving from a set of specific facts to a general conclusion. It can also be seen as a form of theory-building, in which specific facts are used to create a theory that explains relationships between the facts and allows prediction of future knowledge.

\-- [Inductive reasoning (WP)][321]

See also:

[Reasoner][322]

[Inductive reasoning (WP)][323]

#### Inference

Inference is the process by which information may be inferred (ie, calculated, reasoned), whether by a human or a program (eg, inference engine, semantic reasoner). Protege 4 provides access to a variety of semantic reasoners, including (by default) FaCT++.

See also:

[Entailment][324], [Inferred][325], [Reasoner][326]

[FaCT++][327], [Inference (WP)][328], [Inference engine (WP)][329], [Pellet][330], [Semantic reasoner (WP)][331]

#### Inferred

Information in Protege 4 ontologies can be asserted (ie, declared by an assertion) or inferred (calculated by means of an inference). The Asserted Class Hierarchy view displays the results of assertions. The Inferred Class Hierarchy view adds the results of inferences.

See also:

[Class][332], [Asserted][333], [Assertion][334], [Entailment][335], [Hierarchy][336], [Inference][337]

[Class Hierarchy view][338], [Class Hierarchy (inferred) view][339]

#### Inheritance

Inheritance allows a descendant class to make use of properties defined for an ancestor class in the abstraction hierarchy. For example, in the Pizza Ontology, the hasBase property is defined for the class Pizza. Consequently, descendants such as NamedPizza and Margherita are also expected to have a PizzaBase.

See also:

[Abstraction][340], [Class][341], [Ancestor Class][342], [Descendant Class][343], [Hierarchy][344], [Property][345]

[Pizza Ontology][346]

#### Inherited

Properties defined for an ancestor class in the abstraction hierarchy can be inherited by a descendant class.

See also:

[Abstraction][347], [Ancestor Class][348], [Descendant Class][349], [Hierarchy][350], [Inheritance][351], [Property][352]

#### Instance

Each member (ie, instance) of a class is an individual. For example, in the Pizza Ontology, you might order a pizza of the class Margherita, but the pizza you receive would be an instance of the class.

See also:

[Class][353], [Individual][354], [Member][355]

[Pizza Ontology][356]

#### Intersection

In set theory, the intersection of two or more sets is a set which contains only members of all the base sets. So, for example, the set {2} is the intersection of the sets of even {2, 4, ...} and prime {2, 3, 5, 7, 11, ...} numbers, because 2 is the only number which is both even and prime.

See also:

[Union][357]

[Even number (WP)][358], [Intersection (WP)][359], [Prime number (WP)][360]

#### Inverse Functional Property

A property is inverse functional if its inverse is a functional property. So, for example, a URL is an inverse functional property for a web page because there is only one page that corresponds to it (even if the page responds to multiple URLs).

See also:

[Characteristic][361], [Functional Property][362], [Inverse Property][363], [Property][364]

[InverseFunctionalProperty][365]

#### Inverse Property

An inverse property is a property that defines an inverse relationship:

In mathematics, the inverse relation of a binary relation is the relation that occurs when you switch the order of the elements in the relation. For example, the inverse of the relation "child of" is the relation "parent of".

\-- [Inverse relation (WP)][366]

See also:

[Characteristic][367], [Inverse Functional Property][368], [Property][369], [Relation][370]

[inverseOf][371]

#### Irreflexive Property

An irreflexive property is an object property that defines a irreflexive relationship. That is, none of the elements in the set are related to themselves. Inequality is an example of an irreflexive relationship, because no item can be unequal to itself.

See also:

[Characteristic][372], [Object Property][373], [Property][374], [Reflexive Property][375], [Relation][376]

### J, K, L

#### Java

Protege 4, like many other Semantic Web tools, is written in the Java programming language, runs on the Java Virtual Machine, etc.

See also:

[Semantic\_Web][377]

[Java language (WP)][378], [Java platform (WP)][379], [Java Virtual Machine (WP)][380]

KRSS2 syntax, used in Protege 4, is a superset of the "Description-Logic Knowledge Representation System Specification from the KRSS Group of the ARPA Knowledge Sharing Effort" (see "KRSS Specification", cited below).

See also:

[Description Logic][381], [OWL][382], [Rendering][383]

[KRSS Specification][384]

#### LaTeX

LaTeX is a document preparation system, based on TeX. Ontologies may be serialized in LaTeX for ease of reading, publication, etc.

See also:

[Description Logic][385], [OWL][386], [Rendering][387]

[LaTeX (WP)][388], [LaTeX project][389], [TeX (WP)][390]

#### Lattice

Although Protege 4's classes are generally described as forming an "is a" (ie, class) hierarchy, they can also be considered as a lattice of at least two classes. The "Thing" class is the "join" (ie, union, top) of all classes in the lattice. The "Nothing" class is the "meet" (ie, intersection, bottom).

See also:

[Class][391], [Hierarchy][392], [Nothing][393], [Thing][394]

[Lattice (WP)][395]

### M, N, O

#### Manchester OWL Syntax

The Manchester OWL Syntax is a new syntax that has been designed for writing OWL class expressions. It was influenced by both the OWL Abstract Syntax and the DL style syntax, which uses Description Logic symbols such as the universal quantifier (∀) or the existential quantifier (∃).

Here are some examples:

 hasChild some Man
 hasSibling only Woman
 hasCountryOfOrigin value England
 hasChild min 3
 hasChild exactly 3
 hasChild max 3
 Person and hasChild some (Person and (hasChild only Man) and (hasChild some Person))
 hasAge value "21"^^long
 hasAge some int
 Person and hasAge some int\[>= 65\]
 Person and hasAge some int\[>= 18, <= 30\]

See also:

[Class Expression][396], [Description Logic][397], [OWL][398], [Rendering][399]

[Existential quantification (WP)][400], [The Manchester OWL Syntax][401], [Manchester OWL Syntax][402], [Universal quantification (WP)][403]

#### Member

Each member (ie, instance) of a class is an individual. For example, in the Pizza Ontology, you might order a pizza of the class Margherita, but the pizza you receive would be an instance of the class.

See also:

[Class][404], [Individual][405], [Instance][406]

[Pizza Ontology][407]

Like most GUI-based application programs, Protege 4 uses menus (eg, columns and items in the Menu Bar) to handle relatively infrequent user actions (eg, saving a file, adding a view to a tab).

See also:

[Tab][408], [View][409], [Menus chapter][410], [Tabs chapter][411], [Views chapter][412], [UI chapter][413]

[Apple menu (WP)][414]

#### Metrics

Protege 4 uses this term in two related, but quite different ways. In both cases, it's talking about measurements, but the nature of the measurements is quite different:

-   The [DL Metrics][415] view displays qualitative information about the expressivity of the Description Logic (DL) being used by Protege 4. For example, does the DL allow inverse properties?
-   The [Ontology Metrics][416] view displays quantitative information about the ontology's use of axioms and properties.

See also:

[Axiom][417], [Description Logic][418], [Property][419]

#### NaCTeM

NaCTeM (The National Centre for Text Mining) is a publicly-funded text mining center, providing text mining services and tools for the UK academic community. NaCTeM is operated by the University of Manchester with close collaboration with the University of Tokyo.

See also:

[TerMine][420]

[NaCTeM][421], [TerMine][422], [TerMine Plugin][423]

#### Negative Assertion

A negative assertion states that a property is *not* true. So, for example, one could make an object property assertion that Mary is not Bill's wife or a data property assertion that Bill is not 6 feet tall.

See also:

[Assertion][424]

#### Nothing

Although Protege 4's classes are generally described as forming an "is a" (ie, class) hierarchy, they can also be considered as a lattice. The "Thing" class is the "join" (ie, union) of all classes; the "Nothing" class is a subset of their "meet" (ie, intersection). In informal terms, Nothing contains nothing.

See also:

[Class][425], [Hierarchy][426], [Lattice][427], [Thing][428]

[Lattice (WP)][429]

#### Object Property

Object properties relate objects to other objects (as opposed to data values).

See also:

[Data Property][430], [Property][431]

[Object Properties][432]

#### OBO Flat File Format

OBO format is the text file format used by OBO-Edit, an open source, platform-independent application for viewing and editing ontologies.

See also:

[Description Logic][433], [OWL][434], [Rendering][435]

[OBO-Edit][436], [OBO-Edit User's Guide][437], [OBO 1.2 Specification][438]

#### OntoGraf

The OntoGraf plugin gives support for interactively navigating the relationships of your OWL ontologies.

See also:

[OntoGraf][439] [Plugin][440]

[OntoGraf][441]

#### Ontology

An ontology is a formally-defined vocabulary for a particular domain of interest. Ontologies are typically based on a class hierarchy (asserted and/or inferred), supplemented by assorted properties.

See also:

[Asserted][442], [Class][443], [Hierarchy][444], [Inferred][445], [Property][446]

[Ontology concept][447]

[Ontology (WP)][448]

#### Open World Assumption

The Open World Assumption, used by OWL, says that "just because we don't know something to be true does not mean that we can assume it to be false":

In formal logic, the open world assumption is the assumption that the truth-value of a statement is independent of whether or not it is known by any single observer or agent to be true. It is the opposite of the closed world assumption, which holds that any statement that is not known to be true is false. The open world assumption (OWA) is used in knowledge representation to codify the informal notion that in general no single agent or observer has complete knowledge, and therefore cannot make the closed world assumption. The OWA limits the kinds of inference and deductions an agent can make to those that follow from statements that are known to the agent to be true. In contrast, the closed world assumption allows an agent to infer, from its lack of knowledge of a statement being true, anything that follows from that statement being false.

\-- [Open world assumption (WP)][449]

See also:

[OWL][450]

[Open world assumption (WP)][451]

#### OPPL

Ontology Pre-Processor Language (OPPL) is an abstract formalism, based on Manchester OWL Syntax, that allows for manipulating ontologies written in OWL.

See also:

[Manchester OWL Syntax][452], [OWL][453]

[OPPL][454], [OPPL 2][455]

#### OWL

OWL provides the theoretical basis for Protege 4 ontologies:

The Web Ontology Language (OWL) is a family of knowledge representation languages for authoring ontologies, and is endorsed by the World Wide Web Consortium. This family of languages is based on two (largely, but not entirely, compatible) semantics: OWL DL and OWL Lite semantics are based on Description Logics, which have attractive and well-understood computational properties, while OWL Full uses a novel semantic model intended to provide compatibility with RDF Schema. OWL ontologies are most commonly serialized using RDF/XML syntax. OWL is considered one of the fundamental technologies underpinning the Semantic Web, and has attracted both academic and commercial interest.

\-- [Web Ontology Language (WP)][456]

See also:

[Description Logic][457], [OWL DL][458]

[Introduction][459], [Web Ontology Language (WP)][460]

#### OWL DL

OWL DL is the variant of Web Ontology Language (OWL) used by Protege 4:

OWL DL was designed to provide the maximum expressiveness possible while retaining computational completeness (all conclusions are guaranteed to be computed), decidability (all computations will finish in finite time), and the availability of practical reasoning algorithms. OWL DL includes all OWL language constructs, but they can be used only under certain restrictions (for example, number restrictions may not be placed upon properties which are declared to be transitive). OWL DL is so named due to its correspondence with description logic, a field of research that has studied the logics that form the formal foundation of OWL.

\-- [Web Ontology Language (WP)][461]

See also:

[Description Logic][462], [OWL][463]

#### OWLDoc

OWLDoc is a documentation tool for OWL ontologies.

See also:

[OWL][464]

[OWLDoc Plugin][465]

[OWL Doc][466]\] [OWL Doc 1.0.4][467] [OWL Doc][468] (project)

#### OWL Functional Syntax

OWL Functional Syntax is a human-readable (eg, abstract, linear) encoding for Web Ontology Language (OWL):

The OWL 1.1 functional-style syntax is a new linear syntax for OWL 1.1. The functional-style syntax abstracts from exchange syntaxes and thus facilitates access to and evaluation of the language. The functional-style syntax is suggested for use as an easier-to-read syntax for communication with humans. The functional-style syntax is also the basis for the model theory for OWL 1.1. The functional-style syntax is not quite a complete concrete syntax as it currently ignores issues of white space. The functional-style syntax is similar to the OWL 1.0 Abstract Syntax; it is, however, not backwards compatible with the OWL 1.0 Abstract Syntax, because of several problems with the OWL 1.0 Abstract Syntax that would be very difficult to overcome without sacrificing backwards compatibility.

\-- [OWL Functional Syntax][469]

See also:

[Manchester OWL Syntax][470], [OWL][471], [OWL/XML][472], [RDF/XML][473]

[OWL Functional Syntax][474]

#### OWL/XML

OWL/XML is an XML-based encoding for Web Ontology Language (OWL).

See also:

[Manchester OWL Syntax][475], [OWL][476], [OWL Functional Syntax][477], [Rendering][478], [XML][479]

#### OWLViz

The OWLViz tab provides access to OWLViz, a GraphViz-based plugin for exploring class hierarchies in an OWL ontology:

OWLViz is designed to be used with the Protege OWL plugin. It enables the class hierarchies in an OWL Ontology to be viewed and incrementally navigated, allowing comparison of the asserted class hierarchy and the inferred class hierarchy. OWLViz integrates with the Protege-OWL plugin, using the same colour scheme so that primitive and defined classes can be distinguished, computed changes to the class hierarchy may be clearly seen, and inconsistent concepts are highlighted in red. OWLViz has the facility to save both the asserted and inferred views of the class hierarchy to various concrete graphics formats including png, jpeg, and svg.

\-- [OWLViz Guide][480]

See also:

[OWL][481] [Plugin][482]

[GraphViz][483], [Graphviz (WP)][484], [OWLViz][485], [OWLViz Downloads][486], [OWLViz Guide][487]

### P, Q, R

#### Pellet

Pellet is a third-party semantic reasoner, used by Protege 4 via a plugin. This reasoner, written in Java, was developed by Clark and Parsia.

See also:

[FaCT++][488], [HERAKLES][489], [HermiT][490], [Plugin][491], [Reasoner][492], [Reasoner - Pellet][493]

[Clark and Parsia][494], [Pellet][495], [Semantic reasoner (WP)][496]

#### Plugin

Protege 4 is able to accept a variety of plugin software, including OWLViz, the OWL API and Editor, and assorted reasoners (eg, FacT++, Pellet).

See also:

[API][497], [FaCT++][498], [OWL][499], [OWLViz][500], [Plugins][501], [Reasoner][502]

#### Property

A property defines a specified relationship from objects in a class (the domain) and a set of targets (the range). For example, in the Pizza Ontology, the hasTopping property defines a relation from Pizza objects to PizzaTopping objects.

If the target of the relation is an object (ie, URI), the property is called a Object Property. If the target of the relation is a data value (ie, literal), the property is called a Data Property.

See also:

[Asymmetric Property][503], [Class][504], [Characteristic][505], [Data Property][506], [Disjoint Property][507], [Domain][508], [Equivalent Property][509], [Functional Property][510], [Inverse Functional Property][511], [Irreflexive Property][512], [Object Property][513], [Property][514], [Range][515], [Reflexive Property][516], [Relation][517], [Super Property][518], [Symmetric Property][519], [Transitive Property][520], [URI][521]

[Pizza Ontology][522]

#### Property Chain

A property chain is a property that is defined as a series of other properties. For example, a hasGrandparent property might be defined as a chain of two hasParent properties.

See also:

[Property][523]

[Property Chains][524]

#### Query

Protege 4 uses the term "query" in two distinct, but related ways. In a production system, a query might be a SPARQL "SELECT" command, used to retrieve information from an RDF Triple Store. For example, in the DL Query tab, a Description Logic query (class expression) is used to query the current ontology.

See also:

[Description Logic][525], [RDF][526], [SPARQL][527], [Triple Store][528]

[DL Query Tab][529]

[DL Query][530]

#### Range

A property defines a relation from objects in its Domain to objects in its Range.

See also:

[Domain][531], [Property][532], [Relation][533]

[Domain and Range Restrictions][534]

#### RDF

RDF (specifically, the RDF/XML encoding) may be used by Protege to encode ontologies as text:

The Resource Description Framework (RDF) is a family of World Wide Web Consortium (W3C) specifications originally designed as a metadata data model. It has come to be used as a general method for conceptual description or modeling of information that is implemented in web resources; using a variety of syntax formats.

\-- [Resource Description Framework (WP)][535]

See also:

[Ontology][536], [OWL/XML][537], [RDF/XML][538], [RDFS][539]

[Resource Description Framework (WP)][540]

#### RDFS

RDFS (RDF Schema) is an RDF-based knowledge representation language, providing basic elements (eg, class membership, subclassing) for the description of ontologies.

See also:

[RDF][541]

[RDF Schema][542], [RDF Schema (WP)][543]

#### RDF/XML

RDF/XML is an XML-based encoding for Resource Description Framework (RDF).

See also:

[Manchester OWL Syntax][544], [OWL/XML][545], [OWL Functional Syntax][546], [RDF][547], [Rendering][548], [Turtle][549], [XML][550]

#### Reasoner

Protege 4 provides access to a variety of semantic reasoners, including (by default) FaCT++ and HermiT:

A semantic reasoner, reasoning engine, rules engine, or simply a reasoner, is a piece of software able to infer logical consequences from a set of asserted facts or axioms. The notion of a semantic reasoner generalizes that of an inference engine, by providing a richer set of mechanisms to work with. The inference rules are commonly specified by means of an ontology language, and often a description language. Many reasoners use first-order predicate logic to perform reasoning; inference commonly proceeds by forward chaining and backward chaining.

\-- [Semantic reasoner (WP)][551]

See also:

[FaCT++][552], [HERAKLES][553], [Inference][554], [Pellet][555]

[Inference (WP)][556], [Inference engine (WP)][557], [Semantic reasoner (WP)][558]

#### Refactoring

Protege 4 uses the term "refactoring" to describe simplification of axioms, etc. This usage is borrowed from software engineering:

In software engineering, "refactoring" source code means improving it without changing its overall results, and is sometimes informally referred to as "cleaning it up". Refactoring neither fixes bugs nor adds new functionality, though it might precede either activity. Rather, it improves the understandability of the code, changes its internal structure and design, and removes dead code.

These changes are intended to make the code easier to comprehend, more maintainable, and more amenable to change. Refactoring is usually motivated by the difficulty of adding new functionality to a program or fixing a bug in it.

\-- [Code refactoring (WP)][559]

See also:

[Refactor Menu][560]

[Code refactoring (WP)][561]

#### Reflexive Property

A reflexive property is an object property that defines a reflexive relationship (ie, all elements are related to themselves):

If a relation is reflexive, all elements in the set are related to themselves. For example, the relations "is not greater than" and "is equal to" are reflexive over the set of all real numbers. Since no real number is greater than itself, if you compare any number to itself, you will find "is not greater than" to be true. Since every real number is equal to itself, if you compare any number to itself, you will find "is equal to" to be true.

\-- [Reflexive relation (WP)][562]

See also:

[Characteristic][563], [Irreflexive Property][564], [Object Property][565], [Property][566], [Relation][567]

#### Relation

Protege 4's notion of a relation is closely tied to the mathematical notion of a "binary relation". That is, a mapping between corresponding pairs of elements in a domain and a range set:

In mathematics, a binary relation on a set A is a collection of ordered pairs of elements of A. In other words, it is a subset of the Cartesian product A2 = A × A. More generally, a binary relation between two sets A and B is a subset of A × B. The terms dyadic relation and 2-place relation are synonyms for binary relations.

\-- [Binary relation (WP)][568]

See also:

[Property][569]

[Binary relation (WP)][570]

#### Rendering

Protege 4 uses the term "rendering" in two distinct but related meanings:

-   rendering an entity's URI as text (eg, for display and/or entry)
-   rendering an ontology (etc) into text (eg, for export)

The first meaning has to do with the fact that URIs are better optimized for use by computers then by humans. So, Protege 4 allows humans to use a "rendered" name, instead.

The second meaning has to do with the mechanics of ontology storage and interchange. Protege 4 has its own internal format for storing ontologies. This format is optimized for access and processing, but not for display, exchange, storage, transmission, etc.

Rendering is the process of serializing this information into a byte stream (typically, as text). Any of several encoding formats may be used, including FaCT++, Manchester OWL Syntax, OWL Functional Syntax, OWL/XML, and RDF/XML.

See also:

[Entity][571], [FaCT++][572], [Manchester OWL Syntax][573], [Ontology][574], [OWL Functional Syntax][575], [OWL/XML][576], [RDF/XML][577], [URI][578]

[Entity Rendering HowTo][579]

#### Restriction

Restrictions are statements that can be used to define classes, by restricting aspects of other classes, etc. For example, the Parent class might be defined as class of individuals that are linked to a person by the hasChild property.

See also:

[Class][580], [Domain][581], [Property][582], [Range][583]

[Domain and Range Restrictions][584], [Property Cardinality Restrictions][585], [Property Restrictions][586]

#### Rule

Semantic Web Rule Language (SWRL) rules provide a way to extend the base set of OWL axioms used in Protege 4. For example, a rule might assert that the composition of parent and brother properties implies the uncle property:

parent(?x,?y) ∧ brother(?y,?z) => uncle(?x,?z)

See also:

[Axiom][587], [SWRL][588]

[Rules][589], [Rule Interchange Format (WP)][590], [Semantic Web Rule Language (WP)][591]

### S, T, U

#### Semantic Web

The Semantic Web is an effort, proposed by Tim Berners-Lee et al, to add semantic markup and technology to the World Wide Web. Protege 4 is based on an interlinked collection of Semantic Web standards, including OWL, RDF, RDFS, SPARQL, and SWRL.

See also:

[OWL][592], [RDF][593], [RDFS][594], [SPARQL][595], [SWRL][596]

[Semantic Web (WP)][597], [The Semantic Web][598], [Tim Berners-Lee (WP)][599], [World Wide Web (WP)][600]

#### Sibling Class

A sibling class is a subclass of the superclass of another class. For example, in the Pizza Ontology, Margherita is a sibling class of Caprina, because they are both subclasses of NamedPizza.

See also:

[Ancestor Class][601], [Class][602], [Descendant Class][603], [Sibling Class][604], [Subclass][605], [Superclass][606]

[Pizza Ontology][607]

#### SKOS

The Simple Knowledge Organization System (SKOS) is an area of work developing specifications and standards to support the use of knowledge organization systems (KOS) such as thesauri, classification schemes, subject heading systems, and taxonomies within the framework of the Semantic Web.

See also:

[Introduction to SKOS][608], [SKOS Home Page][609]

#### SPARQL

SPARQL (SPARQL Protocol and RDF Query Language) refers to a set of related W3C standards:

-   [SPARQL Protocol for RDF][610]
-   [SPARQL Query Language for RDF][611]
-   [SPARQL Query Results XML Format][612]

However, most commonly, the term is used to refer to the query language. The query language, which borrows syntax from SQL and Turtle, is used to obtain information from RDF Triple Stores.

See also:

[RDF][613], [Triple Store][614], [Turtle][615]

[SPARQL (WP)][616], [SQL (WP)][617]

#### Subclass

A subclass is an immediate descendant of another class. For example, in the Pizza Ontology, Margherita is a subclass of NamedPizza.

See also:

[Ancestor Class][618], [Class][619], [Descendant Class][620], [Sibling Class][621], [Subclass][622], [Superclass][623]

[Pizza Ontology][624]

#### Subproperty

A subproperty is the immediate descendant of another property. All resources related by a property's subproperty are also related by the property.

See also:

[Descendant Class][625], [Property][626], [Super Property][627]

[rdfs:subPropertyOf][628]

#### Super Property

A super property (also, superproperty) is the immediate ancestor of another property. All resources related by a property are also related by its super property.

See also:

[Subproperty][629]

[rdfs:subPropertyOf][630]

#### Superclass

A superclass is the immediate ancestor of another class. For example, in the Pizza Ontology, NamedPizza is the superclass of Margherita.

See also:

[Ancestor Class][631], [Class][632], [Descendant Class][633], [Sibling Class][634], [Subclass][635], [Superclass][636]

[Pizza Ontology][637]

#### SWRL

SWRL (Semantic Web Rule Language) is a proposal for a Semantic Web rules-language, combining sublanguages of the OWL Web Ontology Language (OWL DL and Lite) with those of the Rule Markup Language (Unary/Binary Datalog).

See also:

[OWL][638], [Rule][639]

[Rules][640], [Semantic Web Rule Language (WP)][641]

#### Symmetric Property

A symmetric property is an object property that defines a symmetric relationship:

In mathematics, a binary relation R over a set X is symmetric if it holds for all a and b in X that if a is related to b then b is related to a.

\-- [Symmetric relation (WP)][642]

So, for example, "sibling" is a symmetric relationship: if a is b's sibling, b is a's sibling.

See also:

[Asymmetric Property][643], [Characteristic][644], [Object Property][645], [Property][646], [Relation][647]

[Symmetric relation (WP)][648], [SymmetricProperty][649]

#### Tab

In Protege 4, a tab is an interface element that provides access to one or more views.

See also:

[Menu][650], [View][651]

[Menus chapter][652], [Tabs chapter][653], [Views chapter][654], [UI chapter][655]

#### Tag Cloud

A tag cloud depicts a set of related tags with corresponding weights. Typically, these weights are represented by the font size.

See also:

[Tag (WP)][656], [Tag cloud (WP)][657]

#### TerMine

TerMine is a term extraction tool, provided by NaCTeM, that extracts concepts from text. The TerMine plugin accesses TerMine via a Web Service over the Internet.

See also:

[NaCTeM][658]

[TerMine Plugin][659]

[NaCTeM][660], [TerMine][661], [TerMine Plugin][662]

#### TONES

TONES (Thinking ONtologiES) is a research project, financed by the European Union:

The aim of the project is \[to\] study and develop automated reasoning techniques for both offline and online tasks associated with ontologies, either seen in isolation or as a community of interoperating systems, and devise methodologies for the deployment of such techniques, on the one hand in advanced tools supporting ontology design and management, and on the other hand in applications supporting software agents in operating with ontologies.

\-- [http://www.tonesproject.org/][663]

Of particular interest to Protege 4 users and developers, the TONES Ontology Repository collects ontologies that might be of use to tools developers for testing purposes.

See also:

[Ontology][664]

[TONES Project][665], [TONES Ontology Repository][666]

#### Thing

Although Protege 4's classes are generally described as forming an "is a" (ie, class) hierarchy, they can also be considered as a lattice. The "Thing" class is the "join" (ie, union) of all classes; the "Nothing" class is a subset of their "meet" (ie, intersection). In informal terms, anything can be a Thing.

See also:

[Class][667], [Hierarchy][668], [Lattice][669], [Nothing][670]

[Lattice (WP)][671]

#### Tool

Items in the Tools menu allow use of specialized functionality (eg, plugins).

See also:

[Menu][672], [Plugin][673], [Tools menu][674]

#### Transitive Property

A transitive property is an object property that defines a transitive relationship:

In mathematics, a binary relation R over a set X is transitive if whenever an element a is related to an element b, and b is in turn related to an element c, then a is also related to c.

\-- [Transitive relation (WP)][675]

So, for example, "ancestor" is a transitive relationship: if a is b's ancestor and b is c's ancestor, then a is c's ancestor.

See also:

[Characteristic][676], [Object Property][677], [Property][678], [Relation][679]

[Transitive relation (WP)][680], [TransitiveProperty][681]

#### Triple Store

An RDF Triple Store (also, triplestore) is a special-purpose database, optimized for the storage and retrieval of RDF metadata.

See also:

[RDF][682], [SPARQL][683]

[Triplestore (WP)][684]

#### Turtle

Turtle (Terse RDF Triple Language) is a human-friendly serialization (ie, rendering) format for RDF (Resource Description Framework) graphs. The SPARQL Query Language incorporates a very similar syntax.

See also:

[RDF][685], [RDF/XML][686], [Rendering][687], [SPARQL][688]

[Turtle (WP)][689]

#### Type

A "type" of an individual is a class that it is an instance of.

See also:

[Class][690], [Individual][691], [Instance][692], [Individuals by Type view][693], [Individuals by Type (inferred) view][694]

#### Union

In set theory, the union of two or more sets is a set which contains every member of any base set. So, for example, the set of letters is the union of the sets of consonants and vowels.

See also:

[Intersection][695]

#### URI

The URI (Uniform Resource Identifier) is similar to the familiar URL (Uniform Resource Locator) which is used to access web pages, etc. In fact, the URL is actually a special case of the URI.

The critical distinction is that, although both URIs and URLs must be unique, a URI need not correspond to an actual resource on the Internet. As long as the identifier is unique, it can safely be used to refer to a resource (eg, an entity).

See also:

[Entity][696] [URL][697]

[Entity Naming HowTo][698], [Uniform Resource Identifier (WP)][699], [Uniform Resource Locator (WP)][700]

#### URL

The URL (Uniform Resource Locator), a special case of the URI (Uniform Resource Identifier), is used to access web pages, etc.

See also:

[UIL][701]

[Entity Naming HowTo][702], [Uniform Resource Identifier (WP)][703], [Uniform Resource Locator (WP)][704]

### V, W, X

#### View

In Protege 4, a view is an interface element that provides access to some part of the ontology. Specifically, a Protege 4 view is a rectangular display area which may be contained in a tab or shown in a separate window.

This usage is reminiscent of those found in database design, technical illustration, etc. That is, a view reveals a portion of the overall information, seen from a particular perspective.

See also:

[Menu][705], [Tab][706]

[Menus chapter][707], [Tabs chapter][708], [Views chapter][709], [UI chapter][710]

#### Watson

Watson is a set of tools for exploring the Semantic Web. It provides an interactive web interface, web APIs, and editor plugins.

See also:

[Semantic Web (WP)][711], [Watson][712], [Watson editor plugins][713], [Watson overview][714]

#### XML

Various flavors of XML (eg, OWL/XML, RDF/XML) may be used by Protege to encode ontologies as text:

XML (Extensible Markup Language) is a set of rules for encoding documents electronically. It is defined in the XML 1.0 Specification produced by the W3C and several other related specifications; all are fee-free open standards. XML’s design goals emphasize simplicity, generality, and usability over the Internet. It is a textual data format, with strong support via Unicode for the languages of the world. Although XML’s design focuses on documents, it is widely used for the representation of arbitrary data structures, for example in web services.

\-- [XML (WP)][715]

See also:

[OWL/XML][716], [RDF/XML][717]

[XML (WP)][718]

### Y, Z, ...

[1]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Feedback "Pr4 UG mi Feedback"
[2]: http://en.wikipedia.org/wiki
[3]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Abstraction
[4]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Ancestor_Class
[5]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Annotation
[6]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Anonymous_Class
[7]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#API
[8]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Asserted
[9]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Assertion
[10]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Asymmetric_Property
[11]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Axiom
[12]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#BeanShell
[13]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Characteristic
[14]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Class
[15]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Class_Expression
[16]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Data_Property
[17]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Datatype
[18]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Defined
[19]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Descendant_Class
[20]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Description
[21]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Description_Logic
[22]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Dialog_Box
[23]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Disjoint_Class
[24]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Disjoint_Property
[25]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Domain
[26]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Entailment
[27]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Entity
[28]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Enumeration
[29]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Equivalent_Class
[30]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Equivalent_Property
[31]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#FaCT.2B.2B
[32]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Functional_Property
[33]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#General_Axiom
[34]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#HERAKLES
[35]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#HermiT
[36]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Hierarchy
[37]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Individual
[38]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Induction
[39]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Inference
[40]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Inferred
[41]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Inheritance
[42]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Inherited
[43]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Instance
[44]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Intersection
[45]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Inverse_Functional_Property
[46]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Inverse_Property
[47]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Irreflexive_Property
[48]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Java
[49]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#KRSS2_Syntax
[50]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#LaTeX
[51]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Lattice
[52]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Manchester_OWL_Syntax
[53]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Member
[54]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Menu
[55]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Metrics
[56]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#NaCTeM
[57]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Negative_Assertion
[58]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Nothing
[59]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Object_Property
[60]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#OBO_Flat_File_Format
[61]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#OntoGraf
[62]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Ontology
[63]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Open_World_Assumption
[64]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#OPPL
[65]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#OWL
[66]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#OWL_DL
[67]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#OWLDoc
[68]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#OWL_Functional_Syntax
[69]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#OWL.2FXML
[70]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#OWLViz
[71]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Pellet
[72]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Plugin
[73]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Property
[74]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Property_Chain
[75]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Query
[76]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Range
[77]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#RDF
[78]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#RDFS
[79]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#RDF.2FXML
[80]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Reasoner
[81]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Refactoring
[82]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Reflexive_Property
[83]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Relation
[84]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Rendering
[85]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Restriction
[86]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Rule
[87]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Semantic_Web
[88]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Sibling_Class
[89]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#SKOS
[90]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#SPARQL
[91]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Subclass
[92]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Subproperty
[93]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Super_Property
[94]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Superclass
[95]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#SWRL
[96]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Symmetric_Property
[97]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Tab
[98]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Tag_Cloud
[99]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#TerMine
[100]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Thing
[101]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#TONES
[102]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Tool
[103]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Transitive_Property
[104]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Triple_Store
[105]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Turtle
[106]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Type
[107]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Union
[108]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#URI
[109]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#URL
[110]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#View
[111]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Watson
[112]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#XML
[113]: http://en.wikipedia.org/wiki/Abstraction
[114]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Class
[115]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Hierarchy
[116]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Subclass
[117]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Superclass
[118]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Abstraction
[119]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Class
[120]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Descendant_Class
[121]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Hierarchy
[122]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Sibling_Class
[123]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Subclass
[124]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Superclass
[125]: https://protegewiki.stanford.edu/wiki/Pr4_UG_ex_Pizza "Pr4 UG ex Pizza"
[126]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Ontology
[127]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#OWL
[128]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Property
[129]: https://protegewiki.stanford.edu/wiki/Pr4_UG_co_Annotation "Pr4 UG co Annotation"
[130]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Class
[131]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Class_Expression
[132]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Description
[133]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Ontology
[134]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#OWL
[135]: http://protegewiki.stanford.edu/index.php/P4AnonymousClasses
[136]: http://en.wikipedia.org/wiki/Application_programming_interface
[137]: https://protegewiki.stanford.edu/wiki/Pr4_UG_rp_OWL_API "Pr4 UG rp OWL API"
[138]: http://owlapi.sourceforge.net/
[139]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Class
[140]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Assertion
[141]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Hierarchy
[142]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Inference
[143]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Inferred
[144]: https://protegewiki.stanford.edu/wiki/Pr4_UG_rv_Cl_Class_hier "Pr4 UG rv Cl Class hier"
[145]: https://protegewiki.stanford.edu/wiki/Pr4_UG_rv_Cl_Class_hier_inf "Pr4 UG rv Cl Class hier inf"
[146]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Asserted
[147]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Axiom
[148]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Class
[149]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Hierarchy
[150]: http://www.w3.org/TR/owl2-primer/
[151]: http://en.wikipedia.org/wiki/Asymmetric_relation
[152]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Characteristic
[153]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Object_Property
[154]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Property
[155]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Relation
[156]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Symmetric_Property
[157]: http://www.w3.org/TR/owl2-primer/
[158]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#General_Axiom
[159]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Rule
[160]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Java
[161]: http://en.wikipedia.org/wiki/BeanShell
[162]: http://www.beanshell.org/
[163]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Asymmetric_Property
[164]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Functional_Property
[165]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#General_Axiom
[166]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Inference
[167]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Inverse_Property
[168]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Inverse_Functional_Property
[169]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Irreflexive_Property
[170]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Property
[171]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Reflexive_Property
[172]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Symmetric_Property
[173]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Transitive_Property
[174]: http://www.w3.org/TR/owl2-primer/#Property_Characteristics
[175]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Abstraction
[176]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Ancestor_Class
[177]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Anonymous_Class
[178]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Descendant_Class
[179]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Disjoint_Class
[180]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Equivalent_Class
[181]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Hierarchy
[182]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Individual
[183]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Inheritance
[184]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Instance
[185]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Lattice
[186]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Thing
[187]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Sibling_Class
[188]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Subclass
[189]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Superclass
[190]: https://protegewiki.stanford.edu/wiki/Pr4_UG_ex_Pizza "Pr4 UG ex Pizza"
[191]: http://en.wikipedia.org/wiki/Class_(computer_science)
[192]: http://en.wikipedia.org/wiki/Object-oriented_programming
[193]: http://en.wikipedia.org/wiki/Object_(computer_science)
[194]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Class
[195]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Enumeration
[196]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Intersection
[197]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Manchester_OWL_Syntax
[198]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Restriction
[199]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Union
[200]: https://protegewiki.stanford.edu/wiki/Pr4_UG_ex_Pizza "Pr4 UG ex Pizza"
[201]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Datatype
[202]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Object_Property
[203]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Property
[204]: http://www.w3.org/TR/owl2-primer/#Datatypes
[205]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Data_Property
[206]: http://www.w3.org/TR/owl2-primer/#Datatypes
[207]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Ancestor_Class
[208]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Class
[209]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Sibling_Class
[210]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Subclass
[211]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Superclass
[212]: https://protegewiki.stanford.edu/wiki/Pr4_UG_ex_Pizza "Pr4 UG ex Pizza"
[213]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Class
[214]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Description_Logic
[215]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Individual
[216]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Property
[217]: https://protegewiki.stanford.edu/wiki/Pr4_UG_rv_Cl_Description "Pr4 UG rv Cl Description"
[218]: https://protegewiki.stanford.edu/wiki/Pr4_UG_rv_Da_Description "Pr4 UG rv Da Description"
[219]: https://protegewiki.stanford.edu/wiki/Pr4_UG_rv_In_Description "Pr4 UG rv In Description"
[220]: https://protegewiki.stanford.edu/wiki/Pr4_UG_rv_Ob_Description "Pr4 UG rv Ob Description"
[221]: http://www.w3.org/TR/owl-ref/#Class_descriptions
[222]: http://en.wikipedia.org/wiki/Description_Logic
[223]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Description
[224]: http://en.wikipedia.org/wiki/Description_Logic
[225]: http://dl.kr.org/
[226]: https://protegewiki.stanford.edu/wiki/Special:BookSources/0521781760
[227]: http://en.wikipedia.org/wiki/Dialog_box
[228]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Class
[229]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Equivalent_Class
[230]: https://protegewiki.stanford.edu/wiki/Pr4_UG_ex_Pizza "Pr4 UG ex Pizza"
[231]: http://www.w3.org/TR/owl2-primer/#Class_Disjointness
[232]: http://www.w3.org/TR/owl-guide/#DisjointClasses
[233]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Characteristic
[234]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Disjoint_Class
[235]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Property
[236]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Property
[237]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Range
[238]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Relation
[239]: http://www.w3.org/TR/owl2-primer/#Domain_and_Range_Restrictions
[240]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Axiom
[241]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Inferred
[242]: http://en.wikipedia.org/wiki/Entailment
[243]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Axiom
[244]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Class
[245]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Individual
[246]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Ontology
[247]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Property
[248]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Query
[249]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#URI
[250]: http://www.w3.org/TR/owl2-primer/#Entity_Declarations
[251]: http://en.wikipedia.org/wiki/Entity-relationship_model
[252]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Class_Expression
[253]: https://protegewiki.stanford.edu/wiki/Pr4_UG_ex_Pizza "Pr4 UG ex Pizza"
[254]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Assertion
[255]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Class
[256]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Descendant_Class
[257]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Equivalent_Property
[258]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Induction
[259]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Inference
[260]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Ontology
[261]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Property
[262]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Reasoner
[263]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Restriction
[264]: http://www.w3.org/TR/owl-guide/#equivalentClass1
[265]: http://www.w3.org/TR/owl2-primer/#Property_Restrictions
[266]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Assertion
[267]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Equivalent_Class
[268]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Inference
[269]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Ontology
[270]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Property
[271]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Reasoner
[272]: http://www.w3.org/TR/owl-guide/#equivalentClass1
[273]: http://www.w3.org/TR/owl2-primer/#OntologyManagement
[274]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#HERAKLES
[275]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#HermiT
[276]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Pellet
[277]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Plugin
[278]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Reasoner
[279]: https://protegewiki.stanford.edu/wiki/Pr4_UG_rp_Reas_FaCT%2B%2B "Pr4 UG rp Reas FaCT++"
[280]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Rendering
[281]: http://owl.man.ac.uk/factplusplus/
[282]: http://en.wikipedia.org/wiki/Semantic_reasoner
[283]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Characteristic
[284]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Inverse_Functional_Property
[285]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Property
[286]: http://www.w3.org/TR/owl-guide/#FunctionalProperty
[287]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Axiom
[288]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#HermiT
[289]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Inferred
[290]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#OWL
[291]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Reasoner
[292]: http://owl.man.ac.uk/factplusplus/
[293]: http://sourceforge.net/projects/herakles/
[294]: http://protege.stanford.edu/HERAKLES
[295]: http://en.wikipedia.org/wiki/Inference
[296]: http://en.wikipedia.org/wiki/Inference_engine
[297]: http://clarkparsia.com/
[298]: http://en.wikipedia.org/wiki/Semantic_reasoner
[299]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#HERAKLES
[300]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Pellet
[301]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Plugin
[302]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Reasoner
[303]: https://protegewiki.stanford.edu/wiki/Pr4_UG_rp_Reas_HermiT "Pr4 UG rp Reas HermiT"
[304]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Rendering
[305]: http://hermit-reasoner.com/
[306]: http://en.wikipedia.org/wiki/Semantic_reasoner
[307]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Abstraction
[308]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Ancestor_Class
[309]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Descendant_Class
[310]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Inheritance
[311]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Lattice
[312]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Subclass
[313]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Superclass
[314]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Thing
[315]: https://protegewiki.stanford.edu/wiki/Pr4_UG_ex_Pizza "Pr4 UG ex Pizza"
[316]: http://en.wikipedia.org/wiki/Hierarchy#Containment_hierarchy
[317]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Class
[318]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Instance
[319]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Member
[320]: https://protegewiki.stanford.edu/wiki/Pr4_UG_ex_Pizza "Pr4 UG ex Pizza"
[321]: http://en.wikipedia.org/wiki/Inductive_reasoning
[322]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Reasoner
[323]: http://en.wikipedia.org/wiki/Inductive_reasoning
[324]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Entailment
[325]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Inferred
[326]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Reasoner
[327]: http://owl.man.ac.uk/factplusplus/
[328]: http://en.wikipedia.org/wiki/Inference
[329]: http://en.wikipedia.org/wiki/Inference_engine
[330]: http://clarkparsia.com/
[331]: http://en.wikipedia.org/wiki/Semantic_reasoner
[332]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Class
[333]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Asserted
[334]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Assertion
[335]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Entailment
[336]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Hierarchy
[337]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Inference
[338]: https://protegewiki.stanford.edu/wiki/Pr4_UG_rv_Cl_Class_hier "Pr4 UG rv Cl Class hier"
[339]: https://protegewiki.stanford.edu/wiki/Pr4_UG_rv_Cl_Class_hier_inf "Pr4 UG rv Cl Class hier inf"
[340]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Abstraction
[341]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Class
[342]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Ancestor_Class
[343]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Descendant_Class
[344]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Hierarchy
[345]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Property
[346]: https://protegewiki.stanford.edu/wiki/Pr4_UG_ex_Pizza "Pr4 UG ex Pizza"
[347]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Abstraction
[348]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Ancestor_Class
[349]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Descendant_Class
[350]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Hierarchy
[351]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Inheritance
[352]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Property
[353]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Class
[354]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Individual
[355]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Member
[356]: https://protegewiki.stanford.edu/wiki/Pr4_UG_ex_Pizza "Pr4 UG ex Pizza"
[357]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Union
[358]: http://en.wikipedia.org/wiki/Even_number
[359]: http://en.wikipedia.org/wiki/Intersection_%28set_theory%29
[360]: http://en.wikipedia.org/wiki/Prime_number
[361]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Characteristic
[362]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Functional_Property
[363]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Inverse_Property
[364]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Property
[365]: http://www.w3.org/TR/owl-guide/#InverseFunctionalProperty
[366]: http://en.wikipedia.org/wiki/Inverse_relation
[367]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Characteristic
[368]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Inverse_Functional_Property
[369]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Property
[370]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Relation
[371]: http://www.w3.org/TR/owl-guide/#inverseOf
[372]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Characteristic
[373]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Object_Property
[374]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Property
[375]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Reflexive_Property
[376]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Relation
[377]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Semantic_Web
[378]: http://en.wikipedia.org/wiki/Java_%28programming_language%29
[379]: http://en.wikipedia.org/wiki/Java_%28software_platform%29
[380]: http://en.wikipedia.org/wiki/Java_Virtual_Machine
[381]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Description_Logic
[382]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#OWL
[383]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Rendering
[384]: http://www.bell-labs.com/user/pfps/papers/krss-spec.ps
[385]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Description_Logic
[386]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#OWL
[387]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Rendering
[388]: http://en.wikipedia.org/wiki/LaTeX
[389]: http://www.latex-project.org/
[390]: http://en.wikipedia.org/wiki/TeX
[391]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Class
[392]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Hierarchy
[393]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Nothing
[394]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Thing
[395]: http://en.wikipedia.org/wiki/Lattice_%28order%29
[396]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Class_Expression
[397]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Description_Logic
[398]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#OWL
[399]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Rendering
[400]: http://en.wikipedia.org/wiki/Existential_quantification
[401]: http://www.co-ode.org/resources/reference/manchester_syntax/
[402]: http://protegewiki.stanford.edu/index.php/Manchester_OWL_Syntax
[403]: http://en.wikipedia.org/wiki/Universal_quantification
[404]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Class
[405]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Individual
[406]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Instance
[407]: https://protegewiki.stanford.edu/wiki/Pr4_UG_ex_Pizza "Pr4 UG ex Pizza"
[408]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Tab
[409]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#View
[410]: https://protegewiki.stanford.edu/wiki/Pr4_UG_rm "Pr4 UG rm"
[411]: https://protegewiki.stanford.edu/wiki/Pr4_UG_rt "Pr4 UG rt"
[412]: https://protegewiki.stanford.edu/wiki/Pr4_UG_rv "Pr4 UG rv"
[413]: https://protegewiki.stanford.edu/wiki/Pr4_UG_ui "Pr4 UG ui"
[414]: http://en.wikipedia.org/wiki/Apple_menu
[415]: https://protegewiki.stanford.edu/wiki/Pr4_UG_rv_On_DL_metrics "Pr4 UG rv On DL metrics"
[416]: https://protegewiki.stanford.edu/wiki/Pr4_UG_rv_On_Ontology_metrics "Pr4 UG rv On Ontology metrics"
[417]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Axiom
[418]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Description_Logic
[419]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Property
[420]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#TerMine
[421]: http://www.nactem.ac.uk/
[422]: http://www.nactem.ac.uk/software/termine/
[423]: http://protegewiki.stanford.edu/wiki/TerMine_Plugin
[424]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Assertion
[425]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Class
[426]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Hierarchy
[427]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Lattice
[428]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Thing
[429]: http://en.wikipedia.org/wiki/Lattice_%28Order%29
[430]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Data_Property
[431]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Property
[432]: http://www.w3.org/TR/owl2-primer/#Object_Properties
[433]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Description_Logic
[434]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#OWL
[435]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Rendering
[436]: http://www.oboedit.org/
[437]: http://www.oboedit.org/docs/index.html
[438]: http://www.geneontology.org/GO.format.obo-1_2.shtml
[439]: https://protegewiki.stanford.edu/wiki/Pr4_UG_rt_OntoGraf "Pr4 UG rt OntoGraf"
[440]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Plugin
[441]: http://protegewiki.stanford.edu/wiki/OntoGraf
[442]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Asserted
[443]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Class
[444]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Hierarchy
[445]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Inferred
[446]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Property
[447]: https://protegewiki.stanford.edu/wiki/Pr4_UG_co_Ontology "Pr4 UG co Ontology"
[448]: http://en.wikipedia.org/wiki/Ontology
[449]: http://en.wikipedia.org/wiki/Open_world_assumption
[450]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#OWL
[451]: http://en.wikipedia.org/wiki/Open_world_assumption
[452]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Manchester_OWL_Syntax
[453]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#OWL
[454]: http://oppl.sourceforge.net/
[455]: http://www.cs.manchester.ac.uk/~iannonel/oppl/index.html
[456]: http://en.wikipedia.org/wiki/Web_Ontology_Language
[457]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Description_Logic
[458]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#OWL_DL
[459]: http://www.w3.org/TR/owl2-primer/#Introduction
[460]: http://en.wikipedia.org/wiki/Web_Ontology_Language
[461]: http://en.wikipedia.org/wiki/Web_Ontology_Language
[462]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Description_Logic
[463]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#OWL
[464]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#OWL
[465]: https://protegewiki.stanford.edu/wiki/Pr4_UG_rp_View_OWLDoc "Pr4 UG rp View OWLDoc"
[466]: http://protegewiki.stanford.edu/index.php/OWLDoc
[467]: http://protegewiki.stanford.edu/index.php/OWL2UML_1.0.4
[468]: http://code.google.com/p/co-ode-owl-plugins/wiki/OWLDoc
[469]: http://www.w3.org/TR/owl11-syntax/
[470]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Manchester_OWL_Syntax
[471]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#OWL
[472]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#OWL.2FXML
[473]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#RDF.2FXML
[474]: http://www.w3.org/TR/owl11-syntax/
[475]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Manchester_OWL_Syntax
[476]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#OWL
[477]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#OWL_Functional_Syntax
[478]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Rendering
[479]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#XML
[480]: http://www.co-ode.org/downloads/owlviz/OWLVizGuide.pdf
[481]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#OWL
[482]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Plugin
[483]: http://www.graphviz.org/
[484]: http://en.wikipedia.org/wiki/Graphviz
[485]: http://protegewiki.stanford.edu/index.php/OWLViz
[486]: http://www.co-ode.org/downloads/owlviz/
[487]: http://www.co-ode.org/downloads/owlviz/OWLVizGuide.pdf
[488]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#FaCT.2B.2B
[489]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#HERAKLES
[490]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#HermiT
[491]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Plugin
[492]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Reasoner
[493]: https://protegewiki.stanford.edu/wiki/Pr4_UG_rp_Reas_Pellet "Pr4 UG rp Reas Pellet"
[494]: http://clarkparsia.com/
[495]: http://clarkparsia.com/pellet
[496]: http://en.wikipedia.org/wiki/Semantic_reasoner
[497]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#API
[498]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#FaCT.2B.2B
[499]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#OWL
[500]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#OWLViz
[501]: https://protegewiki.stanford.edu/wiki/Pr4_UG_rp "Pr4 UG rp"
[502]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Reasoner
[503]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Asymmetric_Property
[504]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Class
[505]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Characteristic
[506]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Data_Property
[507]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Disjoint_Property
[508]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Domain
[509]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Equivalent_Property
[510]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Functional_Property
[511]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Inverse_Functional_Property
[512]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Irreflexive_Property
[513]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Object_Property
[514]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Property
[515]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Range
[516]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Reflexive_Property
[517]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Relation
[518]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Super_Property
[519]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Symmetric_Property
[520]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Transitive_Property
[521]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#URI
[522]: https://protegewiki.stanford.edu/wiki/Pr4_UG_ex_Pizza "Pr4 UG ex Pizza"
[523]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Property
[524]: http://www.w3.org/TR/owl2-primer/#Property_Chains
[525]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Description_Logic
[526]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#RDF
[527]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#SPARQL
[528]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Triple_Store
[529]: https://protegewiki.stanford.edu/wiki/Pr4_UG_rt_DL_Query "Pr4 UG rt DL Query"
[530]: http://protegewiki.stanford.edu/index.php/DL_Query
[531]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Domain
[532]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Property
[533]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Relation
[534]: http://www.w3.org/TR/owl2-primer/#Domain_and_Range_Restrictions
[535]: http://en.wikipedia.org/wiki/Resource_Description_Framework
[536]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Ontology
[537]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#OWL.2FXML
[538]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#RDF.2FXML
[539]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#RDFS
[540]: http://en.wikipedia.org/wiki/Resource_Description_Framework
[541]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#RDF
[542]: http://www.w3.org/TR/rdf-schema/
[543]: http://en.wikipedia.org/wiki/RDF_Schema
[544]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Manchester_OWL_Syntax
[545]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#OWL.2FXML
[546]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#OWL_Functional_Syntax
[547]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#RDF
[548]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Rendering
[549]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Turtle
[550]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#XML
[551]: http://en.wikipedia.org/wiki/Semantic_reasoner
[552]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#FaCT.2B.2B
[553]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#HERAKLES
[554]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Inference
[555]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Pellet
[556]: http://en.wikipedia.org/wiki/Inference
[557]: http://en.wikipedia.org/wiki/Inference_engine
[558]: http://en.wikipedia.org/wiki/Semantic_reasoner
[559]: http://en.wikipedia.org/wiki/Code_refactoring
[560]: https://protegewiki.stanford.edu/wiki/Pr4_UG_rm_Refactor "Pr4 UG rm Refactor"
[561]: http://en.wikipedia.org/wiki/Code_refactoring
[562]: http://en.wikipedia.org/wiki/Reflexive_relation
[563]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Characteristic
[564]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Irreflexive_Property
[565]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Object_Property
[566]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Property
[567]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Relation
[568]: http://en.wikipedia.org/wiki/Binary_relation
[569]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Property
[570]: http://en.wikipedia.org/wiki/Binary_relation
[571]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Entity
[572]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#FaCT.2B.2B
[573]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Manchester_OWL_Syntax
[574]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Ontology
[575]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#OWL_Functional_Syntax
[576]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#OWL.2FXML
[577]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#RDF.2FXML
[578]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#URI
[579]: https://protegewiki.stanford.edu/wiki/Pr4_UG_h2_En_Name "Pr4 UG h2 En Name"
[580]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Class
[581]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Domain
[582]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Property
[583]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Range
[584]: http://www.w3.org/TR/owl2-primer/#Domain_and_Range_Restrictions
[585]: http://www.w3.org/TR/owl2-primer/#Property_Cardinality_Restrictions
[586]: http://www.w3.org/TR/owl2-primer/#Property_Restrictions
[587]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Axiom
[588]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#SWRL
[589]: http://www.w3.org/Submission/SWRL/#2.1
[590]: http://en.wikipedia.org/wiki/Rule_Interchange_Format
[591]: http://en.wikipedia.org/wiki/Semantic_Web_Rule_Language
[592]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#OWL
[593]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#RDF
[594]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#RDFS
[595]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#SPARQL
[596]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#SWRL
[597]: http://en.wikipedia.org/wiki/Semantic_Web
[598]: http://www.scientificamerican.com/article.cfm?id=the-semantic-web
[599]: http://en.wikipedia.org/wiki/Tim_Berners-Lee
[600]: http://en.wikipedia.org/wiki/World_Wide_Web
[601]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Ancestor_Class
[602]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Class
[603]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Descendant_Class
[604]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Sibling_Class
[605]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Subclass
[606]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Superclass
[607]: https://protegewiki.stanford.edu/wiki/Pr4_UG_ex_Pizza "Pr4 UG ex Pizza"
[608]: http://www.w3.org/2004/02/skos/intro
[609]: http://www.w3.org/2004/02/skos
[610]: http://www.w3.org/TR/rdf-sparql-protocol/
[611]: http://www.w3.org/TR/rdf-sparql-query/
[612]: http://www.w3.org/TR/rdf-sparql-XMLres/
[613]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#RDF
[614]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Triple_Store
[615]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Turtle
[616]: http://en.wikipedia.org/wiki/SPARQL
[617]: http://en.wikipedia.org/wiki/SQL
[618]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Ancestor_Class
[619]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Class
[620]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Descendant_Class
[621]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Sibling_Class
[622]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Subclass
[623]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Superclass
[624]: https://protegewiki.stanford.edu/wiki/Pr4_UG_ex_Pizza "Pr4 UG ex Pizza"
[625]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Descendant_Class
[626]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Property
[627]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Super_Property
[628]: http://www.w3.org/TR/rdf-schema/#ch_subpropertyof
[629]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Subproperty
[630]: http://www.w3.org/TR/rdf-schema/#ch_subpropertyof
[631]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Ancestor_Class
[632]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Class
[633]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Descendant_Class
[634]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Sibling_Class
[635]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Subclass
[636]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Superclass
[637]: https://protegewiki.stanford.edu/wiki/Pr4_UG_ex_Pizza "Pr4 UG ex Pizza"
[638]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#OWL
[639]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Rule
[640]: http://www.w3.org/Submission/SWRL/#2.1
[641]: http://en.wikipedia.org/wiki/Semantic_Web_Rule_Language
[642]: http://en.wikipedia.org/wiki/Symmetric_relation
[643]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Asymmetric_Property
[644]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Characteristic
[645]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Object_Property
[646]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Property
[647]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Relation
[648]: http://en.wikipedia.org/wiki/Symmetric_relation
[649]: http://www.w3.org/TR/owl-guide/#SymmetricProperty
[650]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Menu
[651]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#View
[652]: https://protegewiki.stanford.edu/wiki/Pr4_UG_rm "Pr4 UG rm"
[653]: https://protegewiki.stanford.edu/wiki/Pr4_UG_rt "Pr4 UG rt"
[654]: https://protegewiki.stanford.edu/wiki/Pr4_UG_rv "Pr4 UG rv"
[655]: https://protegewiki.stanford.edu/wiki/Pr4_UG_ui "Pr4 UG ui"
[656]: http://en.wikipedia.org/wiki/Tag_%28metadata%29
[657]: http://en.wikipedia.org/wiki/Tag_cloud
[658]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#NaCTeM
[659]: https://protegewiki.stanford.edu/wiki/Pr4_UG_rp_View_TerMine "Pr4 UG rp View TerMine"
[660]: http://www.nactem.ac.uk/
[661]: http://www.nactem.ac.uk/software/termine/
[662]: http://protegewiki.stanford.edu/wiki/TerMine_Plugin
[663]: http://www.tonesproject.org/
[664]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Ontology
[665]: http://www.tonesproject.org/
[666]: http://owl.cs.manchester.ac.uk/repository/
[667]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Class
[668]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Hierarchy
[669]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Lattice
[670]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Nothing
[671]: http://en.wikipedia.org/wiki/Lattice_%28Order%29
[672]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Menu
[673]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Plugin
[674]: https://protegewiki.stanford.edu/wiki/Pr4_UG_rm_Tools "Pr4 UG rm Tools"
[675]: http://en.wikipedia.org/wiki/Transitive_relation
[676]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Characteristic
[677]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Object_Property
[678]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Property
[679]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Relation
[680]: http://en.wikipedia.org/wiki/Transitive_relation
[681]: http://www.w3.org/TR/owl-guide/#TransitiveProperty
[682]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#RDF
[683]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#SPARQL
[684]: http://en.wikipedia.org/wiki/Triplestore
[685]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#RDF
[686]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#RDF.2FXML
[687]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Rendering
[688]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#SPARQL
[689]: http://en.wikipedia.org/wiki/Turtle_%28syntax%29
[690]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Class
[691]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Individual
[692]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Instance
[693]: https://protegewiki.stanford.edu/wiki/Pr4_UG_rv_In_Inds_by_type "Pr4 UG rv In Inds by type"
[694]: https://protegewiki.stanford.edu/wiki/Pr4_UG_rv_In_Inds_by_type_inf "Pr4 UG rv In Inds by type inf"
[695]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Intersection
[696]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Entity
[697]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#URL
[698]: https://protegewiki.stanford.edu/wiki/Pr4_UG_h2_En_Name "Pr4 UG h2 En Name"
[699]: http://en.wikipedia.org/wiki/Uniform_Resource_Identifier
[700]: http://en.wikipedia.org/wiki/Uniform_Resource_Locator
[701]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#URI
[702]: https://protegewiki.stanford.edu/wiki/Pr4_UG_h2_En_Name "Pr4 UG h2 En Name"
[703]: http://en.wikipedia.org/wiki/Uniform_Resource_Identifier
[704]: http://en.wikipedia.org/wiki/Uniform_Resource_Locator
[705]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Menu
[706]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#Tab
[707]: https://protegewiki.stanford.edu/wiki/Pr4_UG_rm "Pr4 UG rm"
[708]: https://protegewiki.stanford.edu/wiki/Pr4_UG_rt "Pr4 UG rt"
[709]: https://protegewiki.stanford.edu/wiki/Pr4_UG_rv "Pr4 UG rv"
[710]: https://protegewiki.stanford.edu/wiki/Pr4_UG_ui "Pr4 UG ui"
[711]: http://en.wikipedia.org/wiki/Semantic_Web
[712]: http://watson.kmi.open.ac.uk/
[713]: http://watson.kmi.open.ac.uk/editor_plugins.html
[714]: http://watson.kmi.open.ac.uk/Overview.html
[715]: http://en.wikipedia.org/wiki/XML
[716]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#OWL.2FXML
[717]: https://protegewiki.stanford.edu/wiki/Pr4_UG_mi_Glossary#RDF.2FXML
[718]: http://en.wikipedia.org/wiki/XML
