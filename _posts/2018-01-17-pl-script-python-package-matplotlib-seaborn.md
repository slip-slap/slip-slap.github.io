---
layout: post
title: "Python Package: Matplotlib and Seaborn"
keywords: []
description: ""
category: "PL"
tags: ["python","script"]
---
{% include JB/setup %}

### matplotlib

#### how to plot 
The general method of use this module to generate a fig

1. obtain a Figure instance
2. obtain a AxesSubplot instance
3. use AxesSubplot instance to plot

```python
import matplotlib.pyplot as plt

# obtain Figure instance 
fig = plt.figure()
# 2 obtain AxesSubplot instance axes1
axes1 = fig.add_subplot(441)
axes1.plot([1,2,3],[3,2,4])
fig.show()
# 3 obtain AxesSubplot instance axes2
axes2 = fig.add_subplot(222)
axes2.scatter([2,3,4,5],[4,3,5,2])
fig.show()
# 4 setting  
axes1.set_xlim(0,20)
axes1.set_xticks([0, 5, 10, 15, 20])
fig.show()
```

the difference between **fig,axesArr=plt.subplots(3,3)** and
**fig = plt.figure()** is in the the generation order of the 
subplot. 
+ plt.subplots(3,3) generates all the AxesSubplot instances one time, and return the fig instance.
+ fig.add_subplot(331) add one AxesSubplot object one time.
<hr />

```python
import matplotlib.pyplot as plt
import numpy as np

x = np.arange(-1, 1, .01)
y = np.sin(2*np.pi*x)

plt.plot(x, y, color="red", label="sin")
plt.axis([-2, 2, -2, 2])
plt.xlabel(u"cm")
plt.ylabel(u"cm")
plt.legend(loc="upper right")
plt.show()

```
#### bar

```python
import matplotlib.pyplot as plt

fig = plt.figure()
axes = fig.add_subplot(111)
# left是元组，表示bar的起始位置，height表示对应的高度，width表示bar的宽度
axes.bar(left=(0, 1, 2, 3), height=(1, 0.5, 0.9, 0.2), width=0.3, color="red", label="sin")
axes.set_title(u"error")
axes.legend(loc="upper right")
plt.show()

```

### Seaborn
Seaborn is a Python data visualization library based on matplotlib, which provides a high level 
interface for drawing informative statistical graphics.
+ Seaborn uses matplotlib to draw plots, many tasks can be accomplished with only seaborn functions
but further customization require using matplotlib directly.


```python
# Seaborn uses matplotlib to draw plots, many tasks can be accomplished with only seaborn functions
# but further customization require using matplotlib directly.
import seaborn as sns

# the uses the matplotlib rcParam system and will affect how all matplotlib plots look
sns.set()

```

### the issue about matplotlib in conda

if you installed matplotlib in the following way

```shell
python3 -m pip install matplotlib
```

you maybe failed to **import matplotlib.pyplot as plt** module in iPython on MacOSX operation system.
you need set the backend of matplotlib

you can resolve the problem in the following ways:
1. create a file named *~/.matplotlib/matplotlibrc*
2. add **backend: TkAgg** to the file



### Animation with celluloid 

```python
import numpy as np
from matplotlib import pyplot as plt
from celluloid import Camera

fig, axes = plt.subplots(1)
camera = Camera(fig)
x = np.random.randint(0,50,50)
y = np.random.randint(0,50,50)

a=iter(zip(x,y))
next(a) # without this line code, it can't create a segment, because point a and point b are the same.
result = list(enumerate(zip(x,y)))
for i,j in zip(x,y):
    try:
        b = next(a)
    except Exception:
        break
    axes.plot([i,b[0]],[j,b[1]], color='blue')
    camera.snap()
    
animation = camera.animate()  
animation.save('m.gif', writer = 'imagemagick')
```

### Animation with Matplotlib


#### Animation on a 3D plot

```python

%matplotlib inline
import numpy as np
import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D
fig = plt.figure()

X = np.arange(0,100,1)
Y = np.arange(0,100,1)

x,y = np.meshgrid(X,Y)
R = np.sqrt((x-50)*(x-50)+(y-50)*(y-50))+np.e
z = np.sin(R)/R +1
axes=Axes3D(fig)

axes.plot_surface(x,y,z,cmap='rainbow')
for angle in range(70,210,5):
    axes.view_init(30,angle)
    # remember to create the fig folder
    filename='fig/'+str(angle)+'.png'
    plt.savefig(filename,dpi=96)
    # without the following code, you can't get the picture
    plt.gca()

```
Then use ImageMagick transform the generated fig to animation

```shell
convert -delay 10 *.png result.gif
```



### inferences
[seaborn document](https://seaborn.pydata.org/introduction.html#introduction) <br />
[failed to import matplotlib in iPython](https://stackoverflow.com/questions/21784641/installation-issue-with-matplotlib-python) <br />
[Animation with Matplotlib](https://towardsdatascience.com/animations-with-matplotlib-d96375c5442c)
[Animation with celluloid](https://pypi.org/project/celluloid/)
