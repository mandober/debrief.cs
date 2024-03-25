# Design and analysis of algorithms

## Overview

design of algorithms and data structures
efficient algorithm
algorihm design is a very creative process
basic design principles (paradigms)

question: if all problems can be solved efficiently using computers. More precisely, we will provide evidence that certain problems probably cannot be solved efficiently.


## Introduction

We use the problem of finding a stable matching to highlight fundamental questions one can ask about computational problems.

These questions include:
- Is there always a solution to a given instance of the problems?
- How quickly can we find such a solution?

basic proof techniques
induction and proof by contradiction
bound on the running time of the algorithm
what this bound tells us
the concept of asymptotic growth of a function
computationally tractable problems


## Graph Algorithms

concept of graph
graph exploration
general graph exploration framework
depth-first search
breadth-first search
Dijkstra's algorithm
Prim's algorithm
solve graph problems: connectivity, biconnectivity, strong connectivity, and topological sorting


## Greedy Algorithms

Greedy algorithms are a simple paradigm to solve optimization problems, where we have to choose the best among a possibly large number of possible solutions to the given problem. These algorithms greedily and myopically make decisions that, from the current point in the computation, brings them closest to an optimal solution. Good heuristics are often greedy. We must learn how to prove that a certain greedy algorithms finds an optimal solution to problems that include scheduling, minimum-length codes, minimum spanning tree, and single-source shortest paths.

## Divide and Conquer

Divide and conquer is an algorithm design paradigm similar to induction. The proof technique often used to establish the correctness and running time of these kind of algorithms is induction.

The idea of a divide-and-conquer algorithm is to split a problem into smaller ones. If we have a small instance of the problem (a base case), we solve the problem in a straightforward fashion. Otherwise (the inductive step), we break up the instance into smaller instances, solve these recursively, and combine the results to obtain a solution to the current instance.

To analyze the running time of such algorithms, we use recurrence relations, that is, recursive formulas that express a function's value for a given argument in terms of its values for smaller arguments. To resolve these recurrences, that is, to transform them into a non-recursive form that uses O-notation we use various tecnics.

The problems of this category include sorting, selection, counting inversions, and integer multiplication.

## Dynamic Programming

Dynamic programming is another technique for solving optimization problems. Many problems that can be solved greedily can also be solved using dynamic programming. If a problem has a greedy solution, you should not look for other approaches as the greedy solution is often simpler and faster. However, if no greedy solution exists, dynamic programming is the next technique to try.

The creative part in designing such algorithms is to find a recurrence relation that expresses the cost of the solution in terms of the cost of solutions to subproblems. Using this recurrence, we use a tabular method to compute and combine the solutions to all possible subproblems of a given problem instance; we need to perform a rather exhaustive search efficiently. The problems here include scheduling, RNA secondary structure, sequence alignment, and shortest paths.

## Data structures

Data structuring is an approach to problems that first builds approapriate data structures to encapsulate all or some results of an algorithm. This helps keeping the algorithm clean, while promoting code-reuse when employing data structure that are sufficiently general.

It is common to use (a,b)-trees as a dictionaly structure to solve a number of geometric problems, such as range searching and line segment intersection. By augmenting the (a,b)-trees, we can solve problems that cannot be solved using the standard ones.

Useful data structures include a dynamically-ordered statistics structure, priority search tree, range trees.

## Randomization

When it's difficult to generate choices or selections in an approach to a problem, randomization algos take the stage. For example, finding a good way to break a problem instance in a divide-and-conquer algorithm into smaller instances. A randomized algorithm makes a random choice, and our job is to prove that its choices are within some boundary of desired selections. The problems here include sorting, selection, and binary space partitions.

## Intractability and NP-completeness

The concepts of NP-completeness and NP-hardness are a measure of the computational intractability of certain problems. Classical NP-hard problems include 3-SAT, vertex cover, Hamiltonian cycle, subset sum. The main technique to establish the NP-hardness of a problem is the polynomial-time reduction.
