---
layout: post
title: "NLP: terminology"
keywords: []
description: ""
category: "AI"
tags: ["NLP"]
---
{% include JB/setup %}

#### TF-IDF

+ TF: Term Frequency, which measures how frequently a term accurs in a document. since every document is different in length.
It is possible that a word would appear much more times in long documents than shorter ones. Thus, the term frequency is often
divided by the document length as a way of normalization


TF(t) = Number of times term t appears in a document /  total number of terms in the document

+ IDF: Inverse Document Frequency, which measures how important a word is. while computing TF, all terms are considered equally 
important. However it is known that certain terms, such as "is", "of", and "that", may appear a lot of times but have little imp
ortance. Thus we need to weight down the frequent terms while scale up the rare ones.


IDF(t) = Total number of Documents / Number of documents with term t in it.


#### Examples
Consider a document containing 100 words wherein the word cat appears 3 times. Assume we have one 10,000 documents, 
and the word cat appears in one thousand of these. 


The TF(cat) is 3/100 = 0.3 


The IDF(cat) is 10,000/10=1000




