# **Mutual Information And What Is It?**
Mutual information (MI) is a non-negative value that measures the mutual dependence between two random variables. The mutual information measures the amount of information we can know from one variable by observing the values of the second variable.

The mutual information is a good alternative to Pearson’s correlation coefficient, because it is able to measure any type of relationship between variables, not just linear associations. And also, it is suitable for both continuous and discrete variables, unlike Pearson’s correlation coefficient. MI is closely related to the concept of entropy. This blog will therefore recap on entropy and explain the connections between the two. 

### **What's Pointwise Mutual Information?**

In statistics, probability theory and information theory, pointwise mutual information (PMI), or point mutual information, is a measure of association. It compares the probability of two events occurring together to what this probability would be if the events were independent.

PMI (especially in its positive pointwise mutual information variant) has been described as "one of the most important concepts in NLP", where it "draws on the intuition that the best way to weigh the association between two words is to ask how much more the two words co-occur in a corpus than we would have a priori expected them to appear by chance."

The concept was introduced in 1961 by Robert Fano under the name of "mutual information", but today that term is instead used for a related measure of dependence between random variables: The mutual information (MI) of two discrete random variables refers to the average PMI of all possible events.

### **Why Is It Important To Our Discussion?**

When we talk about information theory in the context of language processing. It's the mathematical way of measuring the trasmission of a message or communication. Therefore, associations between messages are paramount. 

### **Mutual Information and Pointwise Mutual Information**

Mutual information is a common feature score in feature selection for text categorization. Mutual information suffers from two theoretical problems: It assumes independent word variables, and longer documents are given higher weights in the estimation of the feature scores, which is in contrast to common evaluation measures that do not distinguish between long and short documents. We propose a variant of mutual information, called Weighted Average Pointwise Mutual Information (WAPMI) that avoids both problems. We provide theoretical as well as extensive empirical evidence in favor of WAPMI. Furthermore, we show that WAPMI has a nice property that other feature metrics lack, namely it allows to select the best feature set size automatically by maximizing an [objective function](https://master--scintillating-croissant-8303bc.netlify.app/docs/example/natural-language-processing/ml-and-dl/objective-functions/), which can be done using a simple heuristic without resorting to costly methods like EM and model selection.


### **The Pseudocode of WAPMI**



### **The Actual Code of WAPMI**



