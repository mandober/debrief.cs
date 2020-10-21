# Graph representations

- adjacency list
- adjacency matrix
- edge list
- incidence list
- incidence matrix


## Graph ADT

https://en.wikipedia.org/wiki/Graph_(abstract_data_type)

A graph is an abstract data type that is meant to implement the un/directed graph concepts.

A graph data structure consists of a finite (and possibly mutable) set of vertices (also called nodes or points), together with a set of unordered pairs of these vertices for an undirected graph or a set of ordered pairs for a directed graph. These pairs are known as edges (also called links or lines), and for a directed graph are also known as arrows.

The vertices may be part of the graph structure, or may be external entities represented by integer indices or references.

A graph data structure may also associate to each edge some edge value, such as a symbolic label or a numeric attribute (cost, capacity, length, etc.).

The basic operations on a graph, `G`, include:
* `adjacent       G x y`  : tests existance of edge between vertices x and y
* `neighbors      G x`    : lists all adjacent vertices to vertex x
* `addVertex      G x`    : adds vertex x (if absent)
* `removeVertex   G x`    : remove vertex x (if preent)
* `addEdge        G x y`  : add edge from vertices x to y (if absent)
* `removeEdge     G x y`  : remove edge between x and y (if present)
* `getVertexValue G x`    : return value associated with vertex x
* `setVertexValue G x v`  : set value v associated with vertex x
* `getEdgeValue   G x y`  : return the value associated with the edge (x,y)
* `setEdgeValue   G x y v`: set value associated with edge (x,y) to v

Algorithms in graphs include:
- finding a path between two nodes
- finding the shortest path between two nodes
- determining cycles in the graph
- finding a path that reaches all nodes
- finding the cheapest path.
- etc.


## Adjacency list

https://en.wikipedia.org/wiki/Adjacency_list

Vertices are stored as records or objects, and every vertex stores a list of adjacent vertices. This data structure allows the storage of additional data on the vertices. Additional data can be stored if edges are also stored as objects, in which case each vertex stores its incident edges and each edge stores its incident vertices.

Advantages: efficient representation of sparse graphs.

Disadvantages: slow to remove vertices and edges, because everything is interconnected in a complex way, it needs to find all vertices or edges.

An adjacency matrix is preferred if the graph is dense (the number of edges is close to the number of vertices squared), or if one must be able to quickly look up if there is an edge connecting two vertices.

Adjacency list "go-nuts" representation:
- 1 x doubly-linked list of vertices
- 1 x doubly-linked list of edges
- 1 x doubly-linked (adjacency) list *per* vertex (*switchboard* list)
  - Pointers from adjacency list entries to vertices
  - Cross-pointers between edges and adjacency list entries
- Wherever, you start (vertex or edge) everything is immediately available
- Very confortable representation but higest memory consumption



## Adjacency matrix

https://en.wikipedia.org/wiki/Adjacency_matrix

Adjacency matrix is a 2D matrix, in which the rows represent source vertices and columns represent destination vertices. Data on edges and vertices must be stored externally. Only the cost for one edge can be stored between each pair of vertices. They are slow to add or remove vertices, because matrix must be resized/copied. Adjacency matrix is preferred if the graph is dense, or if quick lookup is crucial, e.g., to test if there's an edge connecting two vertices.


## Incidence matrix

https://en.wikipedia.org/wiki/Incidence_matrix

Incidence matrix is a 2D Boolean matrix, in which the rows represent the vertices and columns represent the edges. The entries indicate whether the vertex at a row is incident to the edge at a column. They are slow to add or remove vertices and edges, because matrix must be resized/copied.


## Edge list

https://en.wikipedia.org/wiki/Edge_list

An edge list is a data structure used to represent a graph as a list of its edges. An (unweighted) edge is defined by its start and end vertex, so each edge may be represented by two numbers. The entire edge list may be represented as a two-column matrix. An edge list may be considered a variation on an adjacency list which is represented as a length |V| array of lists. Since each edge contains just two or three numbers, the total space for an edge list is Θ(|E|).
