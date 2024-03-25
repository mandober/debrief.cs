# Neural Networks

https://nnfs.io/neural_network_animations

**Neural networks** (also called Artificial Neural Networks, though it seems, in recent years, the "artificial" part was dropped), are a type of *machine learning* often conflated with *deep learning*. The defining characteristic of a *deep neural network* is having two or more *hidden layers*, but these hidden layers are ones that the neural network controls. It's reasonably safe to say that most neural networks are a form of deep learning.

>Deep Neural Network ⊆ Neural Network ⊆ Machine Learning ⊆ AI

## Terminology

- classification tasks
- regression tasks
- supervised machine learning
- unsupervised machine learning

Real-world objects are modelled by their properties, expressed in numerical form, so a house may be modelled as a vector whose components are the price, square area, number of rooms, distance from the sea, etc. In the context of ML, the properties are called **features**.

A group of features makes up a **feature set** (represented as a vector). The values of a feature set are referred to as a **sample**.

Samples are fed into a *neural network model* to train it to *fit* the desired outputs from the inputs, or to *make predictions* based on inputs, during the *inference phase*.

**Classification tasks** are about giving ddata points to a neural network and expecting it to classify them correctly.

**Regression tasks** are about fitting a line or curve, that is, the tasks is to predict numerical values, like stock prices.

**Supervised machine learning** is employed when there exists a pre-defined, labeled data (e.g. a set of pictures of cats and dogs). In the *training phase*, a part of the *dataset*, with labels exposed, is fed into the neural network model to let it learn the patterns. Then a part of the dataset (not included for training and with labels hidden), is used to test the model (e.g. to see how well it can predict whether an image shows a cat or dog). This pricess is repeated until the *error rate* becomes tolerable.

**Unsupervised machine learning** is a technic of machine learning when the neural network is tasked to find structure and patterns in the data, without being taught the labels and classes ahead of time.


### Classification

A more detailed example of supervised learning in the form of classification follows.

Let's say you have sensor data for a server with metrics such as upload and download rates, temperature, humidity, etc., all grouped by time for every 10 minutes. Normally, the server operates as intended, but sometimes parts fail and cause an outage.

The sensory data is collected and divided into two classes: one class for times when the server operates nominally, and another class for times when the server is experiencing problems. When the server is operating normally, we label the data as "normal". When the server is failing, we label the data leading up to a failure as "failure". What each sensor measures is a feature, and the totality of all the features represents the server. A group of features makes up a feature set, and the values of a feature set can be referred to as a sample. Samples are fed into a neural network model in order to train it.

The "normal" and "failure" labels are called **classifications** or just **labels**. They are also called *targets* or *ground-truths*, especially during the training phase. These targets are the classifications that are the *goal* or *target*, known to be correct (appropriately classified) for the algorithm to learn.

The aim of this whole endeavor is to train the neural network to correctly classify the sensory data into the two classes, "normal" and "failure". When the error rate becomes tolerable, the algorithm can be employed: it will read the sensory data and predict imminent server failures.

This is just one example of supervised learning that takes the form of classification task. The "supervised" part here is that the training dataset is correctly prelabeled (by people). Also, the test data used for checking the learning progress is labeled (i.e. labels are known but unexposed).

### Regression

**Regression tasks** are about teaching the neural network to predict numerical values, like stock prices.

**Unsupervised machine learning** is a form when the neural network is given the goal to find the structure and patterns in the data without being tought the labels and classes ahead of time.

There are many other technics that fall under the umbrella of neural networks:
- reinforcement learning
- semi-supervised machine learning

## Neural network

- (artificial) neuron
- activation function

Neural networks are modelled by biological ones, which contain a myriad of neurons. A single neuron by itself is useless, but combined with other neurons, the interconnectivity produces practically infinite number of relations that often result in emerging behaviour (a whole becomes more than just the sum of its parts - biologically speaking; for now). Neural networks regularly outperform any other form of machine learning methods.

Neural networks are often considered to be "black boxes", in that we usually have no idea why they reach the conclusions they do. We do understand how they do this, though.

### Layers

A neural network is composed of **layers** (a set of neurons). The first layer is the **input layer**, the last one is the **output layer**, and all the layers in between are called **hidden layers**.

A **dense layer**, the most common type of a layer, consists of a large number of interconnected neurons. In a dense layer, each neuron of a given layer is connected to every neuron of the next layer, meaning the output values of the previous layer become the input values of the next layer.

In diagramms, neorons are represented with small circles, and each layer is made out of a number of vertically stacked circles. Layers need not have the same number of neurons, and the last (output) layer may have only a few neurons, e.g. each corresponding to a particular label (class). Similarly to a bipartite graph, each neuron of one layer is connected (one way connection) to each neuron of the next layer.

For example, in a "dogs vs cats" neural network classifier, each image passes through a neural network, and the final output will have a calculated value in the 'cat' output neuron, and a calculated value in the 'dog' output neuron. The output neuron that received the highest score becomes the class prediction for the image used as input.

### Weight and bias

Moreover, each connection is **weighted**. The weight is a number that gets multiplied by the input value. One of the challenges in building neural networks is figuring out the appropriate weights. In fact, figuring it out can also be a trainable factor.

Once the weights are set and all the inputs flow into a neuron, they are summed, and a **bias**, which is another trainable parameter, is added. The purpose of the bias is to offset the output, positively or negatively, which helps when modelling dynamic data.

The concept of weights and biases can be thought of as "dials" that we tune to best fit the model to data. In a neural network, there are often thousands or even millions of these parameters tuned by the optimizer during training.

Biases and weights are both tunable parameters, and both impact the output of neurons, but they do so in a different way.

Since the weight parameter is multiplied with the input, it can change the input's magnitude or flip its sign (pos ⇔ neg).

`output = weight × input + bias` is very much like `y = mx + b`

The graph of a single-input neuron's output with weight = 1, bias = 0 and input x, is the identity line since `y = 1x + 0` is just `y = x`, with the line closing a 45° angle θ with the x-axis.

Tinkering with the weight impacts the slope of the line. When weight = 2, the angle θ becomes larger (63.4°).

As we increase the value of the weight, the line's slope gets steeper. If we decrease the weight, the slope decreases. If we negate the weight, the slope becames negative.

The bias offsets the line. As we increase the bias, the function output overall shifts upward. If we decrease the bias, then the line moves downward.

https://nnfs.io/bru/

Generally, a **step function** is meant to mimic a neuron in the brain - either firing or not, like an on-off switch. In programming, an on-off switch as a function is called a step function because it looks like a step if we graph it.

An example of a step function is

   f x = y = x <= 0 ? 0 : 1

For a step function:
- output > 0, the neuron fires, so its own output is 1
- output <= 0, the neuron does not fire, so its own output is 0

The formula for a single neuron may be:

    output = sum(inputs × weights) + bias

Then, we usually apply an *activation function* to this output:

    outputʹ = activation(output)

While a step function is fine, modern neural networks tend to use a more informative activation functions, such as the **Rectified Linear** (ReLU).

### A simple neural network example

Each neuron's output could be a part of the ending output layer, as well as the input to another layer of neurons. While the full function of a neural network can get very large, let's start with a simple example with 2 hidden layers, each with 4 neurons.

Besides hidden layers, there is also the input and the output layer.

The **input layer** represents the actual input data (e.g. pixel values from an image or data from a temperature sensor). While the input data may be fed "raw" (in the exact form it was collected), it is typically *preprocessed* through functions like *normalization* and *scaling*. Also it needs to be in numeric form. It is common to preprocess data while retaining its features, so you have the values in similar ranges (between 0 and 1, or -1 and 1). To achieve this, both scaling and normalization functions are used.

The **output layer** is the last layer which outputs whatever the neural network as a whole computes. With classification, where the aim is to predict the class an input belongs to, the output layer will often have as many neurons as the training dataset has classes. A *binary classifier* only has a single output neuron. For example, in a "dog vs cat" classifier there are two classes total. Such classifier uses a particluar output neuron for each class. So the output layer will have one neuron associated with "dog" and the other with "cat". Things may be simplified further by having a single output neuron for "dog" vs "not dog".

For each image passed through this example neural network, the final output will have a calculated value in the "cat" output neuron, and a calculated value in the "dog" output neuron. The output neuron that received the highest score becomes the class prediction for the input image.

## Paramaters

Forward and backward passes in training neural networks are dictated by very large mathematical formulas. When represented as one giant function, an example of a neural network's *forward pass* would be daunting.

https://nnfs.io/vkt/

A typical neural network has thousands or even up to millions of adjustable parameters (weights and biases). In this way, neural networks act as enormous functions with vast numbers of parameters. The concept of a long function with millions of variables that could be used to solve a problem isn't all too difficult. With that many variables related to neurons, arranged as interconnected layers, we can imagine there exist some combinations of values for these variables that will yield desired outputs. Finding that combination of parameter values (weight and bias) is the challenging part.

The end goal for neural networks is to adjust their weights and biases (the parameters), so when applied to a yet-unseen example in the input, they produce the desired output.

When supervised machine learning algorithms are trained, we show the algorithm examples of inputs and their associated desired outputs. One major issue with this concept is **overfitting** - when the algorithm only learns to fit the training data but doesn't actually "understand" anything about underlying input-output dependencies. It basically just "memorizes" the training data.

Thus, we tend to use *in-sample* data to train a model and then use *out-of-sample* data to validate an algorithm. Certain percentages are set aside for both datasets to partition the data. For example, if there is a dataset of 100,000 samples of data and labels, you take 10,000 and set them aside to be the *out-of-sample or validation data*. You then train the model with the other 90,000 *in-sample or training data* and finally validate your model with the 10,000 out-of-sample unseen data. The goal is for the model to not only accurately predict on the training data, but also to be similarly accurate while predicting on the withheld out-of-sample validation data.

This is called **generalization**, which means learning to fit the data instead of memorizing it. The idea is that we "train" (slowly adjusting weights and biases) a neural network on many examples of data. We then take out-of-sample data that the neural network has never seen with and hope it can accurately predict on these data too.

To train neural networks, we calculate how "wrong" they are using algorithms to calculate the error, called **loss**, and attempt to slowly adjust their parameters (weights and biases) so that, over many iterations, the network gradually becomes less wrong.

The goal of all neural networks is to generalize - meaning the network can see many examples of never-before-seen data, and accurately output the values we hope to achieve.

Neural networks can be used for more than just classification. They can perform *regression* (predict a scalar singular value), *clustering* (assign unstructured data into groups), and many other tasks.
