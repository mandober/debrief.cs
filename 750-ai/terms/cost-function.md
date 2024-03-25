# Cost function

http://neuralnetworksanddeeplearning.com/chap1.html

What we'd like is an algorithm which lets us find weights and biases so that the output from the neural network approximates `y(x)` for all training inputs `x`. To quantify how well we're achieving this goal we define a **cost function**, aka **loss or objective function**.

>C(w,b) ≡ 1/2n ∑ x||y(x) − a||²           (6)

Here,
- `w` is the collection of all weights in the network
- `b` all the biases
- `n` is the total number of training inputs
- `a` is the vector of outputs from the network when `x` is input
- `∑` the sum is over all training inputs, `x`
- `||v||` denotes the usual *length function* for a vector `v`
- `C` is the **quadratic cost function**, aka **mean squared error (MSE)**

Of course, the output `a` depends on `x`, `w` and `b`, but to keep the notation simple this dependence is not explicitly indicated.

Inspecting the form of the quadratic cost function, we see that `C(w,b)` is non-negative, since every term in the sum is non-negative. Furthermore, the cost `C(w,b)` becomes small, i.e. `C(w,b) ≈ 0`, precisely when `y(x)` is approximately equal to the output, `a`, for all training inputs, `x`. So our training algorithm has done a good job if it can find weights and biases so that `C(w,b) ≈ 0`.

By contrast, it's not doing so well when `C(w,b)` is large - that would mean that `y(x)` is not close to the output `a` for a large number of inputs. So the aim of the training algorithm is to minimize the cost `C(w,b)` as a function of the weights and biases.

In other words, we want to find a set of weights and biases which make the cost as small as possible. We can do that using the gradient descent algorithm.


Why introduce the *quadratic cost*? After all, aren't we primarily interested in the number of images correctly classified by the network? Why not try to maximize that number directly, rather than minimizing a proxy measure like the quadratic cost? The problem with that is that the number of images correctly classified is not a smooth function of the weights and biases in the network. For the most part, making small changes to the weights and biases won't cause any change at all in the number of training images classified correctly. That makes it difficult to figure out how to change the weights and biases to get improved performance. If we instead use a smooth cost function like the quadratic cost it turns out to be easy to figure out how to make small changes in the weights and biases so as to get an improvement in the cost. That's why we focus first on minimizing the quadratic cost, and only after that will we examine the classification accuracy.

Even given that we want to use a smooth cost function, you may still wonder why we choose the stated quadratic function. Isn't this a rather ad hoc choice? Perhaps if we chose a different cost function we'd get a totally different set of minimizing weights and biases? This is a valid concern, and later we'll revisit the cost function, and make some modifications. However, the stated quadratic cost function works perfectly well for understanding the basics of learning in neural networks, so we'll stick with it for now.

>In summary, the goal in training a neural network is to find weights and biases which minimize the quadratic cost function `C(w,b)`.
