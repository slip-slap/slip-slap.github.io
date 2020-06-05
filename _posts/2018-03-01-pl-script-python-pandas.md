---
layout: post
title: "Python: Pandas "
keywords: ["pandas"]
description: ""
category: "PL"
tags: ["python","script"]
---

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





#### Series

Creating a **Series** by passing a list of values

```python
import pandas as pd
s1=pd.Series([1,2,3,46,3])
# find the index of an value
s1[s1==3]
```

#### DataFrame


```python
import numpy as np
import pandas ad pd

df = pd.DataFrame(np.random.rand(3,4),index=list('abc'),columns=list('defg'))
```

##### selecting by label

For getting a cross section using a label:
```python
dates = pd.date_range('19980403',periods=9)
df = pd.DataFrame(np.random.randn(9, 4), index=dates, columns=list('ABCD'))

df.loc[:,['A','B']]
```

##### selecting by position
select via the position of the passed integer
```python
df = pd.DataFrame(np.random.rand(3,4),index=list('abc'),columns=list('defg'))
df.iloc[0:3,0:4]
# selecting the element whose index is [0,0]
df.iloc[0,0]
```


#### Draw
1. Pandas has tight integration with matplotlib.




#### Reference
1. [官网](http://pandas.pydata.org/pandas-docs/stable/install.html)
2. [Ten minutes to Pandas](http://pandas.pydata.org/pandas-docs/stable/getting_started/10min.html#selection)
3. [the difference between Series and Dataframe](https://stackoverflow.com/questions/26047209/what-is-the-difference-between-a-pandas-series-and-a-single-column-dataframe)
4. [Use Pandas to
   Draw](http://queirozf.com/entries/pandas-dataframe-plot-examples-with-matplotlib-pyplot)
