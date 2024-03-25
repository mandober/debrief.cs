# Modelling a neural network

## Modelling a simple neural network

Let's say we have a single neuron, and there are 3 inputs to this neuron. As in most cases, when you initialize parameters in neural networks, the network will have weights randomly initialized, and biases set to zero.

Each input is associated with a weight. Inputs are the data that we pass into the model to get desired outputs, while weights and biases are the parameters that are tuned to get the desired results. Weights and biases are parameters and they change during training. The values for weights and biases are what gets "trained" and they are what makes a model successful.

Since we're modeling a single neuron, we only have one bias, as there's just *one bias value per neuron*. The bias is an additional tunable value, but unlike weight, it is not associated with inputs.

We'll randomly select some values:

```py
inputs  = [1, 2, 3]
weights = [0.2, 0.8, -0.5]
bias    = 2
```

This neuron sums each input multiplied by that input's weight, then adds the bias. All the neuron does is take the fractions of inputs, where these fractions (weights) are the adjustable parameters, and adds another adjustable parameter (the bias), then outputs the result.

```py
output = (inputs[0] * weights[0] +
          inputs[1] * weights[1] +
          inputs[2] * weights[2] + bias)
```

## A Layer of Neurons

Layers are just sets of neurons. Each neuron in a layer takes exactly the same input - the input given to the layer (which can be either the training data or the output from the previous layer), but contains its own set of weights and its own bias, producing its own unique output. The layer's output is a set of each of these outputs - one per each neuron.

Let's say we have 3 neurons in a layer and 4 inputs: https://nnfs.io/mxo/. We add 2 additional sets of weights and 2 additional biases to form 2 new neurons for a total of 3 in the layer. The layer's output is a list of 3 values, not just a single value like for a single neuron.

```py
inputs   = [ 1,     2,    3,     2.5]

weights1 = [ 0.2,   0.8, -0.5,   1    ]
weights2 = [ 0.5,  -0.91, 0.26, -0.5  ]
weights3 = [-0.26, -0.27, 0.17,  0.87 ]

bias1 = 2
bias2 = 3
bias3 = 0.5

outputs = [
  # Neuron 1:
  inputs[0] * weights1[0] +
  inputs[1] * weights1[1] +
  inputs[2] * weights1[2] +
  inputs[3] * weights1[3] + bias1,
  # Neuron 2:
  inputs[0] * weights2[0] +
  inputs[1] * weights2[1] +
  inputs[2] * weights2[2] +
  inputs[3] * weights2[3] + bias2,
  # Neuron 3:
  inputs[0] * weights3[0] +
  inputs[1] * weights3[1] +
  inputs[2] * weights3[2] +
  inputs[3] * weights3[3] + bias3
]

# >>> [4.8, 1.21, 2.385]
```

We have 3 sets of weights and 3 biases, which define 3 neurons. Each neuron is "connected" to the same inputs. The difference is in the separate weights and bias that each neuron applies to the input.

This is called a **fully connected neural network** - every neuron in the current layer has connections to every neuron from the previous layer.

```py
inputs = [1, 2, 3, 2.5]

weights = [
  [ 0.2,   0.8, -0.5,   1   ],
  [ 0.5,  -0.91, 0.26, -0.5 ],
  [-0.26, -0.27, 0.17,  0.87]
]

biases = [2, 3, 0.5]

# Output of current layer
layer_outputs = []

# For each neuron
for neuron_weights, neuron_bias in zip(weights, biases):

  # Zero-out the output of a given neuron
  neuron_output = 0

  # For each input and weight to the neuron
  for n_input, weight in zip(inputs, neuron_weights):

    # Multiply the input by associated weight
    # and add to the neuron's output variable
    neuron_output += n_input * weight

  # Add bias
  neuron_output += neuron_bias

  # Put the neuron's result in the layer's output list
  layer_outputs.append(neuron_output)

print(layer_outputs)
>>> [4.8, 1.21, 2.385]
```

## Scalar, Vector, Matrix, Tensor, Array, List

### Scalar

A scalar is a singular numeric value. Scalars are contrasted by compound numeric values like vectors and matrices.

### Vectors

Vector is a collection of numbers each corresponding to a spacial dimension. Scalars can represent only magnitude, but vectors also encode direction besides the magnitude. Speed is representable by a scalar (magnitude only), but representing velocity requires a vector, because velocity has magnitude (i.e.speed) but also a direction (velocity = speed + direction).


The most common types of vectors are 2-d and 3-d vectors. In a Cartesian 2-d coordinate system, all vectors




A list of lists is **homologous** if each list along a dimension is identically long, and this must be true for each dimension.

A *matrix* is a two dimensional (rectangular) array, but not all arrays are matrices as an *array* can have any number of dimensions.

```py
# d1 array, shape: (3,)   ← a 1-tuple in python must have an extra comma 
vector = [ 2, 4, 5 ]

# d2 array, shape: (3, 2)
matrix =
  [ [ 4, 2 ]
  , [ 5, 1 ]
  , [ 8, 2 ]
  ]

# d3 array, shape: (3, 2, 3)
3darray =
  [ [ [ 4, 2, 5 ]
    , [ 5, 1, 6 ]
    ]
  , [ [ 6, 4, 2 ]
    , [ 3, 1, 3 ]
    ]
  , [ [ 6, 8, 6 ]
    , [ 8, 9, 4 ]
    ]
  ]
```

The "shape" of the matrix above would be 3x2, or more formally described as a shape of `(3, 2)` as it has 3 rows and 2 columns.

The first dimension is what's inside the outermost brackets - since it has 3 elements there (3 lists), the size in the first dimension is 3. Those element-lists must have the same length to form a matrix (and herer they do - each element-list has size 2). The next dimension's size is the number of elements inside the inner pair of brackets - it is 2 in case of matrix above since all element-lists contain 2 items.

### Tensors

There's no question that a tensor is not just an array, but the real question is: What is a tensor, to a computer scientist, in the context of deep learning? We believe that we can solve the debate in one line: a **tensor object** is an object that can be represented as an array.

What this means is, as programmers, we will *treat tensors as arrays* in the context of deep learning, and that's really there is to it. Are all tensors just arrays? No, but they are represented as arrays in our code, so, to us, they're only arrays, and this is why there's so much argument and confusion.

We define an **array** as an *ordered homologous container for numbers*, and use this term when working with the `NumPy` since that is the term NumPy uses.

A *linear array*, also called a 1-dimensional array, is the simplest example of an array, and in Python, this is a list. A *matrix* is 2-d data container, represented as a 2-d array.

Each element of an `n`-d array can be accessed using a *`n`-tuple of indices as a key*.

A *vector* in math is what we call a list in Python or a 1-d array in NumPy. *Python lists* and *NumPy arrays* do not have the same properties as a vector, but, just as we can write a matrix as a list of lists in Python, we can also write a vector as a list or an array. Additionally, we regard vectors algebraically as a set of numbers in brackets, which is in contrast to the physics perspective, where the vector's representation is an arrow, characterized by a magnitude and direction.

## Dot Product and Vector Addition

When multiplying vectors, we either perform a *dot product*, which results in a scalar, or a *cross product*, which results in a vector.

A **dot product** of two vectors is a sum of products of consecutive vector elements. Dot product is applicable only if both vectors have the same size.

>a̅∙b̅ = Σ {i=1..n} aᵢbᵢ = a₁b₁ + a₂b₂ + … + aₙbₙ

```py
a = [1,2,3]
b = [2,3,4]

# To obtain the dot product
dot_product = a[0]*b[0] + a[1]*b[1] + a[2]*b[2]
```

```py
def zips(xs, ys, zs = []):
  if (len(xs) > len(ys)):
    ln = len(ys)
  else:
    ln = len(xs)
  for i in range(0, ln):
    zs.append((xs[i], ys[i]))
  return zs

b = [6, 7, 8]
c = [2, 9]
d = []
e = [0]
w = [0, 1]

#print(zips(b, c))
print(zips(c, b))
#print(zips(w, b))
#print(zips(b, w))
```

```py
# Or, to calc the dot product we can define zipWith using
# the builtin `zip` function, which correctly stops zipping
# when the shortest iterator is exhausted.
def zipWith(f, xs, ys, zs = []):
  for x, y in zip(xs, ys):
    zss.append(f(x, y))
  return zss
```

```py
# So then we can do just
zss = zipWith(lambda x, y: x * y, a, b)
```

à la Haskell

```hs
dot_product = zipWith (*) [1,2,3] [2,3,4]
```


NumPy lets us perform **vector addition** in a natural way - using the plus sign with the variables containing vectors. The addition of the two vectors is an operation performed element-wise, which means that both vectors have to be of the same size, and the result is a vector.

>a̅ + b̅ = [a₁+b₁, a₂+b₂, …, aₙ+bₙ]

## A Single Neuron with NumPy

```py
import numpy as np

inputs = [1.0, 2.0, 3.0, 2.5]
weights = [0.2, 0.8, -0.5, 1.0]
bias = 2.0

outputs = np.dot(weights, inputs) + bias

print(outputs)
# >>> 4.8
```

## A Layer of Neurons with NumPy

```py
import numpy as np

inputs = [1.0, 2.0, 3.0, 2.5]
weights = [[0.2, 0.8, -0.5, 1],
           [0.5, -0.91, 0.26, -0.5],
           [-0.26, -0.27, 0.17, 0.87]]

biases = [2.0, 3.0, 0.5]

layer_outputs = np.dot(weights, inputs) + biases

print(layer_outputs)
# >>> array([4.8 1.21 2.385])
```

This syntax involving the dot product of weights and inputs followed by the vector addition of bias is the most commonly used way to represent this calculation of `inputs · weights + bias`.

To explain the order of parameters we are passing into `np.dot()`, we should think of it as whatever comes first will decide the output shape. In our case, we are passing a list of neuron weights first and then the inputs, as our goal is to get a list of neuron outputs.

A dot product of a matrix and a vector results in a list of dot products.

The `np.dot()` method treats the matrix as a list of vectors and performs a dot product of each of those vectors with the other vector. In this example, we used that property to pass a matrix, which was a list of neuron weight vectors and a vector of inputs and get a list of dot products - neuron outputs.

## A Batch of Data

To train, neural networks tend to receive data in **batches**.

So far, the example input data have been only one sample (or observation) of various features called a feature set, `inputs = [1, 2, 3, 2.5]`.

Here, the `inputs` data are somehow meaningful and descriptive to the output we desire. Imagine each number as a value from a different sensor. Each of these values is a *feature observation datum*, and together they form a *feature set instance*, also called an *observation*, or a *sample*.

### The concept of fitment in batches

Often, neural networks expect to take in many samples at a time for two reasons. One reason is that it's faster to train in batches in parallel processing, and the other reason is that batches help with *generalization* during training.

If you *fit* (perform a step of a training process) on one sample at a time, you are highly likely to keep fitting to that individual sample, rather than slowly producing general tweaks to weights and biases that fit the entire dataset. Fitting or training in batches gives you a higher chance of making more meaningful changes to weights and biases.

## Matrix Product

The matrix product is an operation in which we have 2 matrices, and we are performing dot products of all combinations of rows from the first matrix and the columns of the second matrix, resulting in a matrix of those atomic dot products.

To perform a matrix product, the size of the second dimension of the left matrix must match the size of the first dimension of the right matrix.

For example, if the left matrix has a shape of (5, 4) then the right matrix must have have the its first dimension equal to 4, e.g. (4, 7).

The shape of the resulting matrix is the first dimension of the left matrix and the second dimension of the right matrix, so in this example the resulting matrix would have the shape (5, 7).

We can convert vectors to matrices to multiply them. One vector can stay as is, a *row vector*, but we need to transpose the other to get a *column vector*. We can then convert each to a matrix and perform matrix operations on them.

In other words, row and column vectors are matrices with one of their dimensions being of a size of 1; and, we perform the matrix product on them instead of the dot product, resulting in a *single value matrix*.

## Transposition

Transposition is a rotation around the main diagonal of a matrix so its rows become columns and columns become rows.

The relation between the *dot product* and *matrix product* is that a dot product of two vectors equals a matrix product of a row and column vector.

>a̅ ∙ b̅ = A ∙ Bᵀ

`A` is a matrix obtain from the row vector `a̅` (in code, this conversion only involves encolsing an 1-d array within an extra pair og brackets so it becomes a 2-d array).

[1, 2, 3] a vector, has comma-spearated components, denoted with an over arrow, a̅ (here just a line but it should be a right-pointing arrow).

```py
(3, 1) × (1, 3) = (3, 3)

⎡5⎤ ⎡ 10 15 20 ⎤
⎢6⎥ ⎢ 12 18 24 ⎥
⎣7⎦ ⎣ 14 21 28 ⎦
    [  2  3  4 ]
```
