---
layout: post
title: "Python: Pyqtgraph"
keywords: [""] 
description: "python"
category: "PL"
tags: ["python"]
---
{% include JB/setup %}

#### what's pyqtgraph
pyqtgraph is born for dynamic graph, matplotlib is for static graph.


#### demo

```python
import numpy as np
import pyqtgraph as pg

# create the app
app = pg.mkQApp()
win = pg.GraphicsWindow()
win.resize(600,400)
p = win.addPlot()
curve = p.plot()

data = []
idx = 0
N = 200

def updateCurveData():
    global idx
    tmp = np.sin(np.pi/50*idx)
    if(len(data)<N):
        data.append(tmp)
    else:
        data[:-1] = data[1:]
        data[-1] = tmp

    curve.setData(data)
    idx+=1

#### the following code used to obtain the latest data and update the graph
timer = pg.QtCore.QTimer()
# update the data of the curve
timer.timeout.connect(updateCurveData)
# update every 50ms
timer.start(50)
# start the app
app.exec_()
```

#### relationship with PyQt applications
1. For the serious application developer, all of the functionality in pyqtgraph is available via widgets 
that can be embedded just like any other Qt widgets. Most importantly, see: PlotWidget, ImageView, GraphicsLayoutWidget,
and Graphics.

#### Reference
1. [pyqtgraph official document](http://www.pyqtgraph.org/documentation/introduction.html)
