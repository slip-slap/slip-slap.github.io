---
layout: post
title: "Python: Juypter"
keywords: []
description: "python"
category: "code"
tags: ["python"]
---
{% include JB/setup %}

#### how to use

```shell
sudo jupyter notebook --allow-root
```

#### integrated with matplotlib
put **%matplotlib inline** in the first cell of the notebook to plot
```python
%matplotlib inline

import matplotlib
import numpy as np
import matplotlib.pyplot as plt
```


#### set default brower for 

1. first, you need to generate the **jupyter\_notebook\_config.py** file by the following command

```shell
jupyter notebook --generate-config
```

2. edit the configuration file

```shell
c.NotebookApp.browser = u'open -a /Applications/Google\ Chrome.app %s'
```
