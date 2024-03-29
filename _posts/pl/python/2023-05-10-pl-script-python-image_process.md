---
layout: post
title: "Python: Image Process"
keywords: ["PIL", "introduction"]
description: "python"
category: "PL"
tags: ["python","script"]
---
{% include JB/setup %}

#### Opencv
1. install: using pip to install opencv is eazier than with conda 
```python
python -m pip install opencv-python
import cv2
```

#### convert between a PIL Image and a numpy array


```python
from PIL import Image
import numpy as np

# the conversion from Image to array
im = Image.open("sample.png")
np\_im = np.array(im)
print(np\_im.shape)

# the conversion from array to Image
new_im = Image.fromarray(np_im)
# for grey images, you need add the following code 
# new_im = new_im.convert("L")
new_im.save("altered_sample.png")

```

#### Reference
1. [convert between PIL Image and Array](https://kite.com/python/examples/4887/pil-convert-between-a-pil-%60image%60-and-a-numpy-%60array%60)
2. [PIL can not write mode F to jpeg](https://stackoverflow.com/questions/16720682/pil-cannot-write-mode-f-to-jpeg)
