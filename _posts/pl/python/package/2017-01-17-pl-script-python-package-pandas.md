---
layout: post
title: "Python Package: Pandas"
keywords: ["pandas"]
description: ""
category: "PL"
tags: ["python"]
---

#### Motivation
名字由来: panel data和data analysis。panel data是经济学中关于多维数据集的一个术语
，pandas也提供了panel的数据类型。<br/>


#### what is the difference between Series and DataFrame ?
1. According to [Pandas Docs](http://pandas.pydata.org/pandas-docs/version/0.13.1/generated/pandas.DataFrame.html) **DataFrame
can be thought as a dict-like container for Series Objects**
2. As Pandas can be thought as a dict-like container for Series Objects. so when change a variable type from dictonary type
to dataframe type. the key still unchange, but the value turned into a Series object.
3. Analogously, we need both list and matries
But which one is treat as a Series, according to the following code, I think each columns is treat as a Series.
That's the reason why the **row of dataframe** are named as **index**.  Actually, the **index is the Series object attribute**

```python
dic1={'name':['jason','hennry','mattel','hemmann'],'age':[17,20,5,40],'gender':['male','female','female','male']}
pd.DataFrame(dic1)

"""
name  age  gender
0    jason   17    male
1   hennry   20  female
2   mattel    5  female
3  hemmann   40    male
"""
```


### Playground

1. Obtain data
```python
adult  = pd.read_csv("https://archive.ics.uci.edu/ml/machine-learning-databases/adult/adult.data", names = ['age','workclass','fnlwgt', 'education',    'education_num','marital_status','occupation','relationship','race','sex','capital_gain','capital_loss', 'hours_per_week', 'native_country','label'], index_col = False)
```

2. Sampling 100 points

```python
data = adult.sample(100);
```

3. Access data with df.loc(selection by label)

```python
df.loc[:,['A','B']]
```

4. Access data with df.iloc(selection by position)

```python
data.iloc[0:3, 0:4]
```

#### Series

Creating a **Series** by passing a list of values

```python
import pandas as pd
s1=pd.Series([1,2,3,46,3])
# find the index of an value
s1[s1==3]
```








#### Dataframe, and list, numpy

```shell
# change the column one to a list

col_one_to_list = df['one'].tolist()

# change the column one to an array

col_one_to_arrary = df['one'].to_numpy()
```
#### With csv file

```
df = pd.read_csv("input.csv") # read csv file
df.iloc[0,2] = 8 # modify element
df.to_csv("input_output.csv") # save csv file
```


#### Galois
1. I feel it is tricky to work with pandas, the reason is pandas is a two-dimensional data structure.
- The data structure that I am familiar with, such as vector, list, map, are one dimensional.
- There is only one method to access the data.
2. Pandas is different, it's two dimensional, and it provides two approach to track the data.


#### Reference
1. [官网](http://pandas.pydata.org/pandas-docs/stable/install.html)
3. [the difference between Series and Dataframe](https://stackoverflow.com/questions/26047209/what-is-the-difference-between-a-pandas-series-and-a-single-column-dataframe)
5. [index in pandas](https://towardsdatascience.com/pandas-index-explained-b131beaf6f7b)

