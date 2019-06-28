# Machine Learning

http://www.r2d3.us/visual-intro-to-machine-learning-part-1/
http://www.r2d3.us/visual-intro-to-machine-learning-part-2/

In **machine learning** (ML), computers apply *statistical learning techniques* to automatically identify patterns in data. These techniques can be used to make highly accurate predictions.

In machine learning terms, categorizing data points is a **classification task**. The classification process gets better as more dimensions, i.e. attributes about data, are used; Adding dimensions allows for more nuance. Dimensions in a *data set* are called **features**, **predictors**, or **variables**. Since machine learning concepts have arisen across disciplines (CS, statistics, engineering, psychology, etc.) the terms used for the same thing may differ.

Identifying boundaries in data using math is the essence of statistical learning.

The data set used to create the ML model has many dimensions. Creating a model is also known as **training a model**.

Machine learning searches for patterns in data using statistical learning to identify boundaries. One example of a machine learning method is a **decision tree**. Decision trees look at one variable at a time and are a reasonably accessible (though rudimentary) machine learning method.

A decision tree uses *if-then statements* to define patterns in data. These statements, called **forks**, split the data into two branches based on some value. That value is called a **split point** and it is the decision tree's analog of a boundary. So, items, e.g., to the left of the split point get categorized in one way, while those to the right in another.

Choosing a split point has inherent tradeoffs that resulting in mis-labelling the data, either as **false negatives** or **false positives**.

At the **best split**, the results of each branch should be as homogeneous (pure) as possible. There are several mathematical methods to choose from to calculate it (see *gini index* or *cross entropy*). However, even the best split on a single feature (single dimension) often incorrectly labels the data, which can be improved by adding another split point. The algorithm then repeats the process on the subsets of data. This recursion on a data set appears frequently in training models.

The best split may then vary based on the tree branch under observation.

This algorithm is greedy, because it takes a top-down approach to splitting the data; it is looking for a variable that makes each subset the most homogeneous at that moment.

Additional forks will add new information that can increase the **prediction accuracy** of a decision tree. It is possible to keep adding layers until 100% prediction accuracy is achieved. These ultimate tree branches are **leaf nodes**. However, the 100% accuracy only applies to the **training data**, which is the data set used to train the decision tree model.

However, in order to test the actual performance of the decision tree, we need to feed it the **test data**, which are previously unused data points. Ideally, the tree should perform similarly on both known and unknown data.

**Overfitting** is often the reason why a tree model might perform badly on unknown data, and it is because the model has learned to treat every feature in the training data as important, even if a feature turns out to be irrelevant.

Overfitting is one of the fundamental ML concept, signifying the Bias-Variance tradeoff.


## Model Tuning and the Bias-Variance Tradeoff

http://www.r2d3.us/visual-intro-to-machine-learning-part-2/

The goal of modeling is to approximate real-life situations by identifying and encoding patterns in data. Models make mistakes if those patterns are overly simple or overly complex.


**Models** are used to approximate situations (objects, concepts) by identifying and encoding patterns in the data. Incorrect models make these patterns either too simple or too complex, which represents the Bias-Variance tradeoff.
