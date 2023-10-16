# Continuous Bag of Words (CBOW) in NLP


We can express the words of a textual text as numerical vectors so that the computer can comprehend it. Word embeddings, a method of encoding words as numerical vectors, are one approach to do this. The meaning of the words and their connections to other words in the language are captured by these vectors. Using unsupervised learning techniques like Word2vec, GloVe, or FastText, word embeddings can be produced. 

Word embeddings are dense vector representations of words that contain their semantic meaning and relationships. Word2vec is a neural network-based method for producing word embeddings. The implementation of Word2vec can be done in one of two ways:

    - continuous bag-of-words
    - skip-gram


Word embeddings are produced using the well-liked natural language processing method known as Continuous Bag of Words (CBOW). Because they represent the semantic and syntactic links between words in a language, word embeddings are crucial for many NLP tasks. 

It is a neural network-based method called that predicts a target word based on the context words around it. It is a form of "unsupervised" learning, which allows it to gain knowledge from unlabeled data, and it is frequently applied to pre-train word embeddings for various NLP applications like sentiment analysis, text categorization, and machine translation. 

![](../modules/extras/connectionism/cbow.png)


The BoW model is straightforward and simple to use, however it falls short when it comes to interpreting linguistic meaning and capture the order or context in which the words appear.

The CBOW model, in contrast, uses a neural network-based method to capture word context. Based on the words that come before and after the target word in a certain context frame, it learns to predict it. The CBOW model can more accurately capture a word's meaning in a particular context by taking into account the words around it.


###