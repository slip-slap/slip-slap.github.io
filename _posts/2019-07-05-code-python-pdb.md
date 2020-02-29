---
layout: post
title: "python pdb"
keywords: ["python", "pdb"]
description: ""
category: "python"
tags: ["language"]
---
{% include JB/setup %}

#### initiate pdb

```shell
python3 -m pdb foo.py
```

#### add breakpoint

```python
import pdb
pdb.set_trace()
```

#### Stepping through code

One of the strongest feature of pdb is that we can move through our code in various ways:

1. **n(ext)**: **n** command runs the code on current line at full-speed and takes us to the next line in the current function.
2. **s(tep)**: **s** is similar to **next** but they vary when a callable(function etc) is involved. If a callable is there then it 
will step us inside that callable instead of taking us to next line in the current function. If no callable is involved then it is
same as next
3. **unt(il)**: **until** command tells the debugger to continue executing until we have reached a line number greater than the current
line number. This comman is helpful in exiting a loop.
4. **r(eturn)**: **r** takes us to the end of the current function. At global level it takes us to the last line in the module. This 
command is helpful you want to step through the whole function body at once.
5. **c(ont(inute))**: c command lets us run the whole code at full-speed when we are done with our debugging. If there's another breakpoint
in your program when it will stop at that next breakpoint.


#### Jumping between stacks

So far we have only seen how to move forward in code by moving line by line and jumping inside a function call. But pdb provides us 
functionality to jump up and down in the current stack.

