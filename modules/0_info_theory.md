@def sequence=["info_theory"]

# Information Theory: The Foundation behind Natural Language Processing
This blog will touch on the topic of entropy and explain in the simplest and basic language of what Information Theory is about and why it is important. 

❗ This page largely follows the [Analytics Vindya](https://www.analyticsvidhya.com) blog on [Entropy](https://www.analyticsvidhya.com/blog/2020/11/entropy-a-key-concept-for-all-data-science-beginners/#h-what-is-a-decision-tree-in-machine-learning)

### **What Exactly Is Entropy?**
According to wikipedia, it is a scientific concept, as well as a measurable physical property, that is most commonly associated with a state of `disorder, randomness, or uncertainty`. 

The term and the concept are used in diverse fields, from classical thermodynamics, where it was first recognized, to microscopic description of nature in statistical physics, and the the principles of information theory. 

It's said to have far-reaching influence of the establishment of many fields including physics, chemistry, and in biological systems. 

In physicist Ludwig Boltzmann explained entropy as the measure of the number of possible microscopic arrangements or states of individual atoms and molecules of a system that comply with the macroscopic condition of the system. 

In 1948, Bell Labs scientist Claude Shannon developed similar statistical concepts of measuring microscopic uncertainty and multiplicity to the problem of random losses of information in telecommunication signals. 


### **The Origin of Entropy**

Claude E. Shannon's 1958 paper on _A Mathematical Theory of Communication_ marked the birth of information theory. He aimed to mathematically measure the statistical nature of lost information in phone-line signals and proposed information entropy to estimate uncertainty reduced by a message. 

Entropy measures the amount of surprise and data present in a variable. In information theory, a random variable's entropy reflects the average uncertainty level in its possible outcomes. 

Events with higher uncertainty have higher entropy information theory finds applications in machine learning models including decision trees. Understanding entropy helps improve data storage, communication, and decision-making. 

### **The Decision Tree Algorithm** 

The Decision Tree is a popular supervised learning technique in machine learning, serving as a hierarchical if-else statement based on feature comparison operators. It's used for regression and classification problems, `finding relationships between prediction and response variables`. The tree structure includes Root, Branch, and Leaf nodes, representing all possible outcomes based on specific conditions or rules. The algo aims to create `homogenous leaf nodes` containing records of a single type in the outcome variable. However, sometimes restrictions may lead to mixed outcomes in the Leaf nodes. 

To build the tree, the algo selects features and thresholds by optimizing a loss function, aiming for the most accurate predictions. Decision Trees offer interpretable models and are widely used for various applications, from simple binary classification to complex decision-making.



### **The Connections between These Two**

As I have gone over these concepts, it seems to be the case that entropy has to do with the transformation between heterogeneity to homogeneity, and the decision tree algo is doing exactly that. 

---


![](../extras/info_theory/out.png)


---

A general entropic framework is however lacking, especially for decision-making that inevitably involves uncertainty. Shannon's entropy is based only on probabilistic uncertainty, which makes it quite restrictive in human decision-making that also involves uncertainty due to incompleteness, vagueness, and individualistic attitudes. 

The goal of decision tree is to decrease the uncertainty or the "impurity" of the target data as much as possible at the leaf (or the end-outcome) nodes. 

The objective function, which is the decision tree algo here minimizes the impurity of the data by splitting down the tree further. There are two metrics to estimate this impurity: Entropy and Gini. 



<!-- {{<details title="**Entropy, Gini, and Chi-Square**" open="True">}}

As mentioned above, entropy is about the `uncertainty in information`. Refering back to the decision tree, it is a measure of a mixture of different calsses or in our case a mix of different car types in the Y variable. 

Gini impurity: A `decision tree algo for selecting the best split`. The probability of the class being 1 means  that the node is pure. That's what's needed to be achieved in a gini impurity evaluation. 

Chi-Square: is a statistical test to determine if there is a `significant association between two categorical variables`. It is a non-parametric test, meaning it does not make assumptions about the underlying distribution of data. 
{{</details>}} --> 


---

### **The Chi-Square Formula**
A Pearson's Chi-Square test is a statistical test for `categorical data`. 


```
💡Categorical data

1. is divided into groups or categories.
2. is based on qualitative characteristics.
3. has no order in categorical values and variables.
4. can take numerical values, but those numbers don’t have any mathematical meaning.
5. is displayed graphically by bar charts and pie charts.

```

It's used to determine whether your data are significantly different from what you expected. There are two types of Pearson's Chi-Square tests: 

The Chi-Square goodness of fit test is used to test whether the frequency distribution of a categorical variable is different from your expectations. 

The Chi-Square test of independence is used to test whether two categorical variables are related to each other. 

Chi-Square is often written as $\text{x}^{2}$ and is pronounce "kai-square". This is to run non-parametric tests on categorical data. Categorical variables can be nominal or ordinal and represent groupings such as species or nationalities. 

The Chi-Square formula tests use the same formula to calculate the test statistic, Chi-Square ($\text{X}^{2}$):


$$\text{x}^{2} = \sum_{i} \, \frac{(0_i - \text{E}_{i})^2}{\text{E}_{i}}$$


```
where:

    Χ^2 is the Chi-Square test statistic
    Σ is the summation operator (it means “take the sum of”)
    O is the observed frequency
    E is the expected frequency
```

The test ultimately serves to understand and answer the question of whether the frequencies appeared between two categorical variables actually have connections or follow some pattern by comparing the observed frequencies to the frequencies that we might expect to obtain purely by chance. 

### **Coming Back to Decision Trees**

In decision trees, again entropy is a measure of impurity used to evaluates the homogeneity of a dataset. It helps determine the best split for building an informative decision tree model. 

```
💡Gain and Entropy

- are related concepts in decision tree algorithms. 
- Gain measures the reduction in entropy achieved by splitting a dataset, helping to 
identify the best attribute for partitioning the data.

```

### **Example Cost Function in A Decision Tree**

Say we have a box full of an equal number of coffee pouches of two flavors: Caramel Latte and the regular, Cappuccino. You may choose either of the flavors but with eyes closed. 

The predicament where you would have to decide and this decision of yours that can lead to results with equal probability is nothing else but said to be the state of maximum uncertainty. In case, I had only caramel latte coffee pouches or cappuccino pouches then we know what the outcome would have been and hence the uncertainty(or surprise will be) zero. 

The probability of getting each outcome of a caramel latte pouch or cappuccino pouch is:

```
P(Coffee pouch == Caramel Latte) = 0.50
P(Coffee pouch == Cappuccino) = 1 - 0.50 = 0.50
```
When we have only one result either caramel latte or cappuccino pouch, then in the absence of uncertainty, the probability of the event is:
```
P(Coffee pouch == Caramel Latte) = 1
P(Coffee pouch == Cappuccino) = 1 - 1 = 0
```

There is a relationship between heterogeneity and uncertainty; the more heterogeneous the event the more uncertainty. On the other hand, the less heterogeneous, or so to say, the more homogeneous the event, the lesser is the uncertainty. The uncertainty is expressed as Gini or Entropy.

### **How Does Entropy Actually Work?**
Claude E. Shannon had expressed this relationship between the probability and the heterogeneity or impurity in the mathematical form with the help of the following equation:


$$\text{Entropy(p)} = -\sum_{i=1}^{N} \, \text{P}_{i} \, \text{log}_{2} \, \text{P}_{i}$$

The uncertainty or the impurity is represented as the log to base 2 of the probability of a category ($\text{p}_{i}$). The index ($\text{i}$) refers to the number of possible categories. Here, i = 2 as our problem is a binary classification.

This equation is graphically depicted by a symmetric curve as shown below. On the x-axis is the probability of the event and the y-axis indicates the heterogeneity or the impurity denoted by $\text{H(X)}$.

---

![](../extras/info_theory/entropy.jpeg)

---
The $\text{log}_{2} \text{p}_{i}$ has a very unique property that is when there are only two outcomes say probability of the event $\text{p}_{i}$ is either 1 or 0.50 then in such scenario $\text{log}_{2}  \text{p}_{i}$ takes the following values (ignoring the negative term):


| $\text{p}_{i}$|$\text{p}_{i}=1$  | $\text{p}_{i}=0.5$           |
| --- | ---| --- |
| $\text{log}_{2} \text{p}_{i}$ | $\text{log}_{2} (1) = 0 $ | $\text{log}_{2} (0.50) = 1$|

Now, the above values of the probability and $\text{log}_{2} \text{p}_{i}$  are depicted in the following manner:

---
![](../extras/info_theory/resize_1.png)

---

Entropy in Machine Learning
the catch is when the probability, $\text{p}_{i}$ becomes 0, then the value of $\text{log}_{2}  \, \text{p}_{0}$ moves towards infinity and the curve changes its shape to:

---
![](../extras/info_theory/resize_2.png)

---
The entropy or the impurity measure can only take value from 0 to 1 as the probability ranges from 0 to 1 and hence, we do not want the above situation. So, to make the curve and the value of  $\text{log}_{2} \text{p}_{i}$ back to zero, we multiply $\text{log}_{2}  \text{p}_{i}$ with the probability i.e. with $\text{p}_{i}$ itself.

Therefore, the expression becomes ($\text{p}_{i}*  \text{log}_{2}  \text{p}_{i}$) and  $\text{log}_{2}  \text{p}_{i}$ returns a negative value and to remove this negativity effect, we multiply the resultant with a negative sign and the equation finally becomes:

$$\text{H(X)} = - Σ (\text{p}_{i} * \text{log}_{2} \, \text{p}_{i})$$

Now, this expression can be used to show how the uncertainty changes depending on the likelihood of an event.

The curve finally becomes and holds the following values:

---
![](../extras/info_theory/resize_3.png)

---
This scale of entropy from 0 to 1 is for binary classification problems. For a multiple classification problem, the above relationship holds, however, the scale may change.

Calculation of Entropy in Python
We shall estimate the entropy for three different scenarios. The event Y is getting a caramel latte coffee pouch. The heterogeneity or the impurity formula for two different classes is as follows:

$$ \text{H(X)} = - [(\text{p}_{i} * \text{log}_{2} \, \text{p}_{i}) + ( \text{q}_{i} * \text{log}_{2}  \text{q}_{i})]$$

where,
```
p_i = Probability of Y = 1 i.e. probability of success of the event
q_i = Probability of Y = 0 i.e. probability of failure of the event
```
#### **Case 1**
| Coffee flavor | Quantity of Pouches | Probability |
| --------| -------- | -------- |
|  Caramel Latte | 7   | 0.7   |
|  Cappuccino | 3  | 0.3  |
|  Total | 10  | 1  |

$$ \text{H(X)} = - [(0.70 * \text{log}_{2} (0.70)) + (0.30 * \text{log}_{2} (0.30))] = 0.88129089 $$

This value 0.88129089 is the measurement of uncertainty when given the box full of coffee pouches and asked to pull out one of the pouches when there are seven pouches of caramel latte flavor and three pouches of cappuccino flavor.
#### **Case 2**
| Coffee flavor | Quantity of Pouches | Probability |
| --------| -------- | -------- |
|  Caramel Latte | 5   | 0.5   |
|  Cappuccino | 5  | 0.5  |
|  Total | 10  | 1  |

$$ \text{H(X)} = - [(0.50 * \text{log}_{2} (0.50)) + (0.50 * \text{log}_{2} (0.50))] = 1 $$

#### **Case 3**
| Coffee flavor | Quantity of Pouches | Probability |
| --------| -------- | -------- |
|  Caramel Latte | 10   | 1   |
|  Cappuccino | 0  | 0  |
|  Total | 10  | 1  |

$$ \text{H(X)} = - [(1.0 * \text{log}_{2} (1.0)) + (0 * \text{log}_{2} (0))] ~= 0 $$



In scenarios 2 and 3, can see that the entropy is 1 and 0, respectively. In scenario 3, when we have only one flavor of the coffee pouch, caramel latte, and have removed all the pouches of cappuccino flavor, then the uncertainty or the surprise is also completely removed and the aforementioned entropy is zero. We can then conclude that the information is 100% present.

### **Use of Entropy in Decision Tree**

As we have seen above, in decision trees the cost function is to minimize the heterogeneity in the leaf nodes. Therefore, the aim is to find out the attributes and within those attributes the threshold such that when the data is split into two, we achieve the maximum possible homogeneity or in other words, results in the maximum drop in the entropy within the two tree levels.

At the root level, the entropy of the target column is estimated via the formula proposed by Shannon for entropy. At every branch, the entropy computed for the target column is the weighted entropy. The weighted entropy means taking the weights of each attribute. The weights are the probability of each of the classes. The more the decrease in the entropy, the more is the information gained.

Information Gain is the pattern observed in the data and is the reduction in entropy. It can also be seen as the entropy of the parent node minus the entropy of the child node. It is calculated as 1 - entropy. The entropy and information gain for the above three scenarios is as follows:

| Entropy |  Information  | Gain|
| --------| -------- | -------- |
|  Case 1 | 0.88129089   | 0.11870911   |
|  Case 2 | 1  | 0  |
|  Case 3 | 0  | 1  |

### **Estimation of Entropy and Information Gain at Node Level**

We have the following tree with a total of four values at the root node that is split into the first level having one value in one branch (say, Branch 1) and three values in the other branch (Branch 2). The entropy at the root node is 1.

Now, to compute the entropy at the child node 1, the weights are taken as ⅓ for Branch 1 and ⅔ for Branch 2 and are calculated using Shannon’s entropy formula. As we had seen above, the entropy for child node 2 is zero because there is only one value in that child node meaning there is no uncertainty and hence, the heterogeneity is not present.

$$\text{H(X)} = - [(1/3 * \text{log}_{2} (1/3)) + (2/3 * \text{log}_{2} (2/3))] = 0.9184$$

The information gain for the above tree is the reduction in the weighted average of the entropy.

Information 

$$ \text{Gain} = 1 - (3/4 * 0.9184) - (1/4 *0) = 0.3112 $$

### **How Is Entropy Important to Our Discussion?**

In machine learning, entropy measures the `impurity or randomness present in a dataset`. It is commonly used in decision tree algorithms to evaluate the homogeneity of data at a particular node. A higher entropy value indicates a more heterogeneous subset of data. 

Decision tree models can use entropy to determine the best plots to make informed decisions and build accurate predictive models. 


#### **Conclusion**
Information Entropy or Shannon’s entropy quantifies the amount of uncertainty (or surprise) involved in the value of a random variable or the outcome of a random process. Its significance in the decision tree is that it allows us to estimate the impurity or heterogeneity of the target variable. Subsequently, to achieve the maximum level of homogeneity in the response variable, the child nodes are created in such a way that the total entropy of these child nodes must be less than the entropy of the parent node.
