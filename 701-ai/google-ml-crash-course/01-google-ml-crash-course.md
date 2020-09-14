# Google's Machine Learning Crash Course


Machine Learning Crash Course with TensorFlow APIs
https://developers.google.com/machine-learning/crash-course/

Google's fast-paced, practical introduction to machine learning. A self-study guide for aspiring machine learning practitioners. Machine Learning Crash Course features a series of lessons with video lectures, real-world case studies, hands-on practice exercises, interactive visualizations of algorithms in action.

- Problem Framing
- Data Preparation
- Clustering
- Recommendation
- Testing And Debugging



## 1. Framing

- In supervised ML, the model learns how to combine input to produce useful predictions on unknown data.
- **Feature** is any piece of info usable to represent the subject to ML system.
- **Example** is an instance of data.
- **Labeled example** has features and a label. Used to train the model.
- __Unlabeled example__ has only features. Used to make predictions on new data.
- __Model__ maps examples to labels it predicted.
- Model is defined by internal parameters, which are learned.


Supervised ML is a ML system that learns how to combine input to produce useful predictions on unknown data. In supervised machine learning, we are creating *models* that combine inputs in order to produce useful predictions on unknown data later. But first, we need to train the model by providing it with *labels* (labelled data). For example, in the case of spam filtering, that label might be something like "spam" or "not spam". The label is the target we're trying to predict correctly.

Features are a way to represent the data; a *feature* is any piece of information or attribute that we can obtain about a subject in order to represent it to the machine learning system. Features might be extracted from an email as words in the body of an email, from fields like "to", "from", "subject", or extracted from various pieces of metadata, like routing or header information.

An *example*, is a single piece of data, like an email. A *labeled example* has both, *feature information*, represented in that email, and the *label value* (e.g. 'spam or not spam'), possibly provided by the user. An *unlabeled example* is an instance data for which we have feature information, but no label (we don't yet know if it's spam or not). We need to *classify* it (decide to put an email in inbox or spam).

Finally, there is the *model*, which is making the predictions. It is what we're trying to create by submitting it through the learning process.


## ML Terminology

*Supervised machine learning* systems learn how to combine input to produce useful predictions on new data.

A *label* is the thing we're predicting, the `y` variable in simple linear regression; it could be the future price of wheat, the kind of animal shown in a picture, the meaning of an audio clip, etc.

A *feature* is an input variable, the `x` variable in simple linear regression. A simple machine learning project might use a single feature, while a more sophisticated one could use millions of features. Features are specified as 
$$x_1, x_2, \dots, x_N$$

An *example* is a particular instance of data, $$\textbf{x}$$ (boldface for vector). Examples fall in 2 categories: labeled and unlabeled examples.

A *labeled example* includes both, the features and the label. That is:    
`labeled examples: {features, label}: (x, y)`      
They are used to train the model.



## Linear Regression

Linear regression is a method for finding the straight line or hyperplane that best fits a set of points.

Given a dataset with two quatifiable features, we can plot a scatterplot and then try to fit a line (best fit) that will represent relation between these two features. Drawing a single straight line (without necessarily hitting every point in the chart) shows that the relation is linear - one feature increases as the other does.

The example dataset is a collection of value pairs: the number of crickets' chirps in a miute (as chirps-per-minute, cpm) and the measured temperature (in Celsius) at that time.

Plotting the data with cpm as `x` axes, and temperature as `y` axes, we get the scatterplot with the data coordinates, `(x,y)` pairs. The points indicate that these 2 features are related so that the rate of cpm increase with the temperature, and we can fit a line to approximate this relationship.

The line can't hit every point, we just draw it approximately to intersect as many points as posssible while at the same time being as close as possible to the "missed" points (now on bothsides of the line).

Using the equation for a line, we may denote this function (relation) as:    
$$y = mx + b$$

where `m` is the slope, `b` is y-intercept, `x` is the input and `y` is the output. We're trying to learn the model to predict the value of `y`.

In machine learning, by convention, this formula is written as:

$$y' = b + w_1x_1$$

where:
- $$y'\ \quad$$     predicted label (output); $$y$$ is the real/measured output
- $$b\ \ \ \quad$$  bias (the y-intercept), sometimes also $$w_0$$
- $$w_1\quad$$      weight of feature 1
- $$x_1\ \quad$$    feature (known input)

Weight of a feature corresponds to the slope. Bias (y-intercept) just shifts the plotted line (or curve) up (if positive) or down (if negative).


Then, we can infer the other feature (temperature) for a new input value (cpm), by plugging in that input as x into the function (model).

This model uses only one input feature, but a more sophisticated model might rely on multiple features, each with its own weight, in which case the formula would be:

$$y' = b + w_1x_1 + w_2x_2 + \dots + w_ix_i$$



## Training and Loss

*Training* a model simply means learning (determining) good values for all the weights and the bias from labeled examples.

In supervised learning, a machine learning algorithm builds a model by examining many examples and attempting to find a model that minimizes loss; this process is called *empirical risk minimization*.

__Loss__ is a number indicating how bad the model's prediction was on a single example. By projecting an example (measured/observed, known, value) onto the fitted line (as inferred by the model) shows the loss number of each instance. If the model's prediction is perfect, the loss is zero; otherwise, the loss is greater.

Loss is the penalty for a bad prediction; it is the consequence of fitting the line badly (the line represents the model/function).

The goal of training a model is to find a set of weights and biases that have low loss, on average, across all examples.

Among many functions that aggregate individual into an overall loss, is the squared loss function, aka $$L_2$$ *__loss__*. 

The loss of an example is calculated by squaring the difference between the label and the prediction. That is, subtracting the predicted value from the observed/measured value (hoping it would be zero or as close to zero as possible) already gives us one possible loss function. By squaring this value we amplify the differences, getting the $$L_2$$ loss function:

$$(observation - prediction(x))^2 = (y - y')^2$$


**Mean square error (MSE)** is the average squared loss per example over the whole dataset (sum up all the squared losses for individual examples and then divide by the number of examples):

$$MSE = \frac{1}{N} \sum_{(x,y)\in D} (y - prediction(x))^2$$

where:
- `(x,y)` is an example in which `x` is the set of features (e.g. cpm, age, gender) that the model uses to make predictions, and `y` is the example's label (e.g. temperature).
-  `prediction(x)` is a function of the weights and bias in combination with the set of features `x`.
- `D` is a data set containing many labeled examples, i.e `(x,y)` pairs.
- `N` is the number of examples in `D`.

Although MSE is commonly-used in machine learning, it is neither the only practical loss function nor the best loss function for all circumstances.
