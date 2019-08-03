# Graph Traversal

Depth First Search
Breadth First Search

## Depth First Search
The main principle of DFS is using a stack and recursive function calls to explore down a pathway to a leaf node before backtracking, using a stack, and looking for other routes to other unvisited children.

```pseudo
function dfs(graph, node)
  stack = new Stack()
  search(node)

  function search(node)
    if (!node) return

    if (!node.visited)
      stack.push(node)
      node.visited = true

    if (graph.nodeHasUnvisitedChildren(node))
      search(graph.nextUnvisitedChildOf(node))
    else
      search(stack.pop())
```

## Breadth First Search
Whilst DFS goes as deep as possible until it reaches a leaf and then backtracks, BFS queues up all nodes reachable at a certain depth and then increases the depth until all nodes are visited.

This pseudocode encapsulates the main principle of BFS using a queue to store nodes that are ready to be visited process and recursive function calls visit all reachable nodes.

```pseudo
function bfs( graph, node )
  queue = new Queue()
  queue.enqueue( node )

  while (queue.notEmpty())
    currentNode = queue.dequeue()

    if (!currentNode.visited)
      currentNode.visited = true

      while ( child = graph.nextUnvisitedChildOf( node ) )
        queue.enqueue( child )
```

## DFS and BFS differences
Running both algorithms on the same structure we can observe:
- The nodes of the graph are visited in a different order (if the depth is greater than two)
- If there are multiple edges to a child node, the algorithms will traverse different edges
- BFS will always traverse the shortest path (based upon intermediate nodes visited) between two nodes
- Each algorithm will only traverse nodes reachable from the start node, disconnected components are not traversed.
