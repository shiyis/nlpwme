---
katex: true
---

### **What Is Information Retrieval?**
Information retrieval(IR) may be defined as a software program that deals with the organization, storage, retrieval, and evaluation of information from document repositories particularly textual information. The system assists users in finding the information they require but it does not explicitly return the answers of the questions. It informs the existence and location of documents that might consist of the reuiqred information. The documents that satisfy user's requirement are called relevant docuements. A perfect IR system will retrieve only relevant documents. 

With the help of the following diagram, we can understand the process of information retrieval(IR) 

---
<!-- {{<figure src="/ir.jpg" height="480px" width="480px">}} -->

---

It is clear from the above diagram that a user who needs information will have to formulate a request in the form of query in natural language. Then the IR system will respond by retrieving the relevant output, in the form of documents, about the required information. 

### **Why Is It Important?**

The main goal of IR research is to develop a model for retrieving information from the repositories of documents. Here, we are going to discuss a classical problem, named **ad-hoc retrieval problem** related to the IR system. 

In ad-hoc retrieval, the user must enter a query in natural language that describes the required information. Then the IR system will return the required docuements related to the desired information. For example, suppose we are searching something on the Internet and it gives some exact pages that are relevant as per our requirement but there can be some non-relevant pages too. This is due to the ad-hoc retrieval problem. 

### **What is an IR model**

Mathematically, models are used in many scientific areas having objective to understand some phenomenon in the real world. A model of information retrieval predicts and explains what a user will find in relevance to the given query. IR model is basically a pattern that defines the above-mentioned aspects of retrieval procedure and consists of the following - 
    - a model for documents 
    - a model for queries 
    - a matching function that compares queries to documents. 

Mathematically, a retrieval model consists of 

    D - representation for documents
    Q - representaton for queries 
    F - the modeling framework for D, Q along with relationship between them.
    R - A similarity function which orders the documents with respect to the query. It is also called ranking. 


### **Types of IR Models**
<!-- {{<details title="**Classical IR Model**">}}
It is the simplest and easy to implement IR model. This model is based on mathematical knowledge that was easily recognized and understood as well. Boolean, Vector and Probabilistic are the three classical IR models.
{{</details>}}

{{<details title="**Non-Classical IR Model**">}}
It is completely opposite to classical IR model. Such kind of IR models are based on principles other than similarity, probability, Boolean operations. Information logic model, situation theory model and interaction models are the examples of non-classical IR model.
{{</details>}}

{{<details title="**Alternative IR Model**">}}
It is the enhancement of classical IR model making use of some specific techniques from some other fields. Cluster model, fuzzy model and latent semantic indexing (LSI) models are the example of alternative IR model.
{{</details>}} -->

### **Difference Between Information Retrieval And Data Retrieval**

The main reason for this difference is that information retrieval usually deals with natural language text which is not always well structured and could be semantically ambiguous. On the other hand, a data retrieval system (such as a relational database) deals with data that has a well defined structure and semantics.



### **User Interactoin With Information Retrieval System**


### **Past, Present, and Future of Information Retrieval**


### **Precision and Recall in Information Retrieval**



### **Document Retrieval using Boolean Model and Vector Space Model**


### **Document Retrieval using Boolean Model and Vector Space**