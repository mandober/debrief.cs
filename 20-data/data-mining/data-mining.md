# Data mining

Using data mining to build a recommendations system.

## Collaborative filtering
Collaborative filtering finds the similarities between two persons in an interest area by comparing their actions.

This system is used to make recommendations based on similar actions made by other people; in a way, people are "collaborating" by making choices. For example, on Amazon, when you visit a page with book details, it show the list of "people who bought this book were interested in these books as well".

The basic method to draw similarities, is measuring distances between the points of a graph that plots an area of interest.

## Manhattan Distance
*Manhattan distance* or *cab driver distance* is one of the simplest method to measure distances between points of interest.

Manhattan distance = $$|x_i - x_k| + |y_i - y_k|$$

that is, considering a 2D Carthusian coordinate system, the distance between point $$a=(x_1, y_1)$$ and point $$b=(x_2, y_2)$$ is the sum of absolute differences between their $$x$$ and $$y$$ values.

The smaller the distance the more similar two points are.

For example, the book recommendation system could be based on the book rating system. With ratings ranging from 1 to 5, the system could take into account just two books, $$X$$ and $$Y$$, and their rating. We can visualize this with a graph where each point, representing a distinct person, has $$x$$ defined as their rating of the book $$X$$ and $$y$$ as their rating of the book $$Y$$.

|n| customer | x | y |
|-|----------|---|---|
|1| Ash      | 2 | 4 |
|2| Bishop   | 5 | 2 |
|3| Cale     | 2 | 5 |
|4| David    | 3 | 3 |
|5| Ellen    | 4 | 1 |

If we need to suggest a book to Ellen, we first calculate the distances between her and others.

| Ellen  | d | \|$$x_n-x_5$$\|+\|$$y_n-y_5$$\| |
|--------|---|---------------------------------|
| Ash    | 5 | \|2-4\| + \|4-1\|               |
| Bishop | 2 | \|5-4\| + \|2-1\|               |
| Cale   | 6 | \|2-4\| + \|5-1\|               |
| David  | 3 | \|3-4\| + \|3-1\|               |

Seeing that Bishop is her closest match, we may recommend to Ellen other books that Bishop rated favorably.

## Euclidean Distance
The path traced when measuring Manhattan distance respects the underlying integer grid, while Euclidean Distance measures the straight line between 2 points. If two points have the same value in either dimensions (x or y), Euclidean is the same as the Manhattan distance. Otherwise (provided they are really different points and not the same one), the difference in x axis plus the difference in y axis gives us the Manhattan distance, i.e. two sides of a tringle. Using the Pythagorean theorem we can calculate the third side, i.e. hypotenuse, which is the Euclidean distance between these points: $$hypotenuse^2 = side_1^2 + side_2^2$$

Euclidean distance = $$\sqrt{|x_i - x_k| + |y_i - y_k|}$$


## Minkowski Distance Metric
We can generalize Manhattan Distance and Euclidean Distance to the Minkowski Distance Metric:

$$
\displaystyle{
  d(x, y) = \sum_{i=1}^{n} ({|x_i - y_i|}^r )^{\frac{1}{r}}
}
$$

* if (r = 1) then the formula collapses into Manhattan distance
* if (r = 2) then Euclidean distance (exp. by 1/2 is the same as sqrt)
* if (r = ∞) then Supremum distance

The greater the r, the bigger the difference in one dimension exerts the greater influence on the total difference.
