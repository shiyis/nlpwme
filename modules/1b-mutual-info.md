
# What is Mutual Information? 

A non-negative metric known as mutual information (MI) is used to assess how closely two random variables depend on one another. The reciprocal information measures how much we can learn about a second variable by looking at the values of the first.

Because it can assess non-linear relationships as well as linear ones, the mutual information is a useful substitute for Pearson's correlation coefficient. In contrast to [Pearson's correlation coefficient](https://en.wikipedia.org/wiki/Pearson_correlation_coefficient), it is also appropriate for both continuous and discrete variables. Entropy and MI are closely connected concepts. As a result, this blog will provide a summary of entropy and discuss how the two are related.

### What’s Pointwise Mutual Information? 


Pointwise mutual information (PMI), sometimes known as point mutual information, is a measure of association used in statistics, probability theory, and information theory. It contrasts the likelihood of two events happening simultaneously with the likelihood of the same events occurring independently.

PMI, particularly in its positive pointwise mutual information variant, has been referred to as "one of the most important concepts in NLP" because it "draws on the intuition that the best way to weigh the association between two words is to ask how much more the two words co-occur in a corpus than we would have a priori expected them to appear by chance."

Robert Fano first proposed the idea in 1961 under the label "mutual information," however the phrase is now more commonly used to refer to a related measure of reliance between random variables: The average PMI of all potential events is referred to as the mutual information (MI) of two discrete random variables.


#### Why Is It Important To Our Discussion? 

When discussing information theory in relation to language processing. It is a method of quantifying communication or message transmission through mathematics. Associations between messages are therefore crucial.


#### Mutual Information and Pointwise Mutual Information 

Mutual information is theoretically plagued by two issues: In contrast to conventional assessment measures that do not differentiate between long and short texts, it assumes independent word variables and gives longer documents more weights in the estimate of the feature scores. 

a different version of mutual information is provided that gets over both issues: Weighted Average Pointwise Mutual Information (WAPMI). We offer both strong theoretical and empirical support for WAPMI. 

Additionally, it's demonstrated that WAPMI possesses a useful quality that other feature metrics do not, namely the ability to automatically choose the appropriate feature set size by maximizing an objective function. This can be accomplished using a straightforward heuristic rather than requiring expensive techniques like EM and model selection.

#### The Pseudocode of WAPMI 


    
#### The Actual Code of WAPMI 
