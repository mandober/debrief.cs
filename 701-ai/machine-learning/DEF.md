# ML DEF


## Supervised Machine Learning
In supervised ML, the model learns how to combine input to produce useful predictions on unknown data.

## Feature
A feature is any piece of information/attribute we can extract/infer from/about the object, that we can use to represent it to the machine learning system.

## Example
An example is a single instance of data; an entry in the dataset. Examples are labelled or unlabelled.

## Labeled example
Labeled example has both features and a label. These are used to train the model.

## Unlabeled example
Unlabeled example is a piece of data that the model hasn't seen before. It has features the model can extract in order to predict its label.

## Model
A model is the end product of the learning process. It is a function that maps examples to the labels it predicts. A model first learns about the data from labelled examples, in its training phase. A good model is one that makes correct predictions when later confronted with unlabelled examples. A model is defined by its internal parameters, which are learned.

## Weight
A coefficient for a feature in a linear model. The goal of training a linear model is to determine the ideal weight for each feature. If a weight is 0, then its corresponding feature does not contribute to the model because that term would evaluate to zero.

## Underfitting
Producing a model with poor predictive ability because the model hasn't captured the complexity of the training data. Many problems can cause underfitting, such as: training on the wrong set of features, training for too few epochs or at too low a learning rate, training with too high a regularization rate, providing too few hidden layers in a deep neural network.

## Training set
The subset of the dataset used to train a model.

## Test set
The subset of the dataset that you use to test your model after the model has gone through initial vetting by the validation set.

## Validation set
A subset of the dataset, disjoint from the training set, used in validation.
