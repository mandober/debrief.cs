# Sorting

https://en.wikipedia.org/wiki/Sorting_algorithm


Properties of (sorting) algorithms:
- time and space complexity bounds
- category: sorting, optimizing, etc.
- sorting type: comparison sorting vs non-comparative sorting
- strategy: divide and conquer, dynamic programming, etc.
- online vs offline
- hybrid vs non-hybrid 
- stable vs unstable
- working data structure: array, list, tree, etc.
- adaptive vs non-adaptive
- as-processed vs all-at-once output



## Timsort

https://en.wikipedia.org/wiki/Timsort

- class: sorting algorithm
- subclass: comparison sorting, hybrid
- stability: stable
- data structure: array
- Worst-case performance        : O(n log n)
- Best-case performance         : O(n)
- Average performance           : O(n log n)
- Worst-case space complexity   : O(n)


## Library sort

https://en.wikipedia.org/wiki/Library_sort

- class: sorting algorithm
- subclass: comparison sorting
- data structure: array
- Worst-case performance        : O(n²)
- Best-case performance         : O(n log n)
- Average performance           : O(n log n)
- Worst-case space complexity   : O(n)

**Library sort**, or **gapped insertion sort** is a sorting algorithm that uses an *insertion sort*, but with gaps in the array to accelerate subsequent insertions.



## Selection sort

Repeatedly find the smallest element in the unsorted list and append it to the sorted list. The smallest element is the one that has no preceding element. The algorithm is finished when the list of unsorted elements becomes empty. This sorting algorithm is called selection sort because it is based on repeatedly selecting an element from an unsorted list. Subtask is finding the smallest element. Most of the effort in selection sort is expended on finding the smallest element in the unsorted list. Even though the unsorted list shrinks by one element in each step, the overall runtime of the sorting algorithm is still quadratic, since we have to traverse, on average, a list that contains half the elements.

## Insertion sort

Takes an arbitrary element (usually the first) from the unsorted list and places it at the correct position in the sorted list. The correct position is after the largest element that is smaller than the element to be inserted. In other words, the insertion step traverses the sorted list to find the last element that has to precede the element to be inserted. The effort in this method is spent on the insertion of elements, not their selection, which gives the method the name insertion sort. Insertion sort is the preferred sorting method of many card players. The difference between insertion sort and selection sort is that in selection sort an element is simply removed from the unsorted list, without the need for any search, then it is inserted into the sorted list by traversing it until the correct insertion position is found.

There is a subtle difference in the runtime of these two algorithms: while the selection sort has to traverse unsorted list completely for every selected element, insertion sort has to do this (on the sorted list) only when the element to be inserted is larger than all the currently present elements.

In the worst case, when the list to be sorted is already sorted, every element will be inserted at the end of the sorted list. In this case insertion sort has the same runtime as selection sort.

In contrast, when the list is inversely sorted (from the largest to smallest element), every element will be inserted at the front of the sorted list, which leads to a linear runtime for insertion sort. One can show that, on average, insertion sort still has quadratic runtime. Insertion sort is often better and never worse then selection sort. The key reason for this is that insertion sort makes use of the results of its own computation. Since new elements are inserted into an already sorted list, insertions do not always have to traverse the whole list. In contrast, selection sort always appends to the sorted list, and since the selection process cannot exploit the sorting, it always has to scan the whole unsorted list.

## Quicksort
- best case: *linearithmic*, `O(n*log(n))`, the runtime grows proportionally to the size of the input times the logarithm of the size
- worst case: quadratic (degenerates into selection sort)

By picking a good pivot element, it is linearithmic. While it is not easy to guarantee good pivots, it turns out that picking a random element or the median of the first, middle, and last element works well on average.

## Mergesort
Mergesort is a sorting algorithm with *linearithmic*, `O(n*log(n))` (the runtime grows proportionally to the size of the input times the logarithm of the size), complexity in the worst case. It was invented by the Hungarian- American mathematician John von Neumann in 1945.

Mergesort splits the unsorted list into two, but unlike qs, mergesort does not
compare elements in this step; it just divides the list into two equal parts. Once these two sublists are sorted, they can be merged into one sorted list by traversing them in parallel and comparing the elements from the two sublists one by one. This works by repeatedly comparing the first elements of the two sublists and taking the smaller one. Since both those sublists are sorted, this ensures that the merged list is sorted, too. But how can the two sublists that result from the splitting step be sorted? This is done by recursively applying mergesort to both lists. The decomposition of the initial unsorted list is complete when only single-element lists are obtained. Then it procedes to sort and merge the sublist into longer and longer lists.

For larger lists, both algorithms have to maintain a potentially large collection of small lists; in the case of quicksort, those lists also have to be kept in the right order.

It may seem that the repeated merging of longer and longer lists is enefficient. However, this intuition is deceptive. Since the decomposition is systematic and halves the size of lists in every step, the overall runtime performance is quite good: in the worst case the runtime of mergesort is linearithmic. First, since we always split lists in half, the number of times lists need to be split is logarithmic. Second, the merging on each level takes only linear time because we have to process each element once. Finally, since merging happens on each level once, we altogether obtain linearithmic runtime.

Mergesort bears some similarity to quicksort. In particular, both algorithms have a phase for splitting lists, followed by a recursive sorting step for each of the smaller lists, and finally a phase for combining the sorted sublists into longer sorted lists.

Quicksort does most of its work in the divide step, where all the element comparisons happen: by ensuring that the elements in the two lists are separated by the pivot, it allows the merge step to be a simple concatenation of lists. In contrast, mergesort's divide step is very simple and does not contain any element comparisons. Most of mergesort's work happens in the merge step, where the sorted lists are combined, similar to a zipper.


## Counting sort

Mergesort is the most efficient sorting method discussed so far, but is it possible to sort even faster? The answer is yes and no. Although we cannot sort faster in general, we can do better under certain assumptions about the elements to be sorted.

For example, if we know the list to be sorted contains only numbers between 1 and 100 (allowing reapeted numbers), we can create an array of 100 cells, one for each potential number in the list. This approach is similar to *bucket sort*, where there is one pile for each letter of the alphabet. Here each array cell corresponds to a pile that contains a particular number. The array cells are indexed from 1 to 100. We use each cell with index i to count how often i occurs in the list. First, we store 0 in each array cell, since we don't know which numbers are in the list to be sorted. Then we traverse the list, and for each encountered element i, we increment the number stored in the array cell with index i. Finally, we traverse the array in order of increasing indices and put each index into the result list as many times as the cell's counter indicates.

For example, if the unsorted list is [4,2,5,4,2,6], we end up with the array:
```
counter: 0 2 0 2 1 1 0 ...
index:   1 2 3 4 5 6 7 ...
```

By traversing the array we find that 1 does not occur in the list, since its counter is still 0. A 1 will therefore not be part of the sorted result list. In contrast, the 2 occurs twice and will therefore be put twice into the list, and so on. The resulting list will be [2,2,4,4,5,6]. This method is called counting sort, since the array maintains a counter for how often an element occurs in the list to be sorted. The runtime of counting sort results from the combined cost of traversing the list and array. Since either step is linear in the size of the respective data structure (list and array), counting sort runs in linear time in the size of the list or array, whichever is larger.

The downside of counting sort is that it can waste a lot of space. Moreover, it only works if the elements can be used to index an array and if the range of the elements of the list is known and is not too large.

Without exploiting special properties of the data, we cannot sort faster than mergesort. While this fact may seem disappointing at first, it is also good news because it gives us the assurance that we have found the fastest algorithm possible. In other words, mergesort is the best possible solution for the problem of sorting. It is therefore an *optimal algorithm*.

The optimality of mergesort rests on two related but distinct facts. Mergesort has linearithmic runtime, and any sorting algorithm for the general case must have at least linearithmic runtime. It is this second part that justifies the conclusion about mergesort's optimality and, for that matter, about the optimality of any other sorting algorithm that has linearithmic runtime in the worst case.

The ultimate goal in designing algorithms and data structures is to find an optimal algorithm for a problem, that is, an algorithm whose worst-case runtime complexity matches the intrinsic complexity of the problem it solves.

It is important to distinguish between the runtime of an algorithm and the complexity of a problem. The latter says that a correct solution must take *at least* that many steps. In contrast, the runtime of an algorithm says that the particular algorithm takes *at most* that many steps.

A statement about the minimal complexity of a problem is called the problem's *lower bound*. A lower bound provides an estimate of how much work a problem will need at minimum and thus characterizes the problem's inherent complexity. This is similar to the geometric distance between two points, which is a lower bound for any path connecting the points. Any such path may be longer than the distance because of obstacles, but it cannot be shorter than the distance.

But how can we be so certain about the lower bound of sorting? Maybe there is an algorithm no one has thought of yet that actually does run faster than linearithmic time. Proving a negative is not easy, since it requires us to show that any algorithm, existing or yet to be invented, has to perform a certain minimum number of steps.

The argument for the lower bound of sorting counts the number of possible lists of a specific length and shows that the number of comparisons required to identify the sorted list is linearithmic. Since every algorithm needs to perform this minimum number of comparisons, it follows that any algorithm requires at least a linearithmic number of steps, which proves the lower bound.

The reasoning about the runtime of algorithms and lower bounds makes assumptions about the capabilities of the computer that is executing algorithms. For example, a typical assumption is that the steps of an algorithm are carried out in sequence and that it takes one time unit to perform one computational step. These assumptions also underlie the analysis of the sorting algorithms discussed in this chapter. If we assume, however, that we can perform comparisons in parallel, the analysis changes, and we obtain different results for runtimes and lower bounds.
