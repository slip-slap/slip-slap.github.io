---
layout: post
title: "Editor: youcompleteme"
keywords: []
description: 
category: "PL"
tags: ["editor","script"]
---
{% include JB/setup %}

####
1. Try running YCM's install script by specifying which python executable should
   run it explicitly:
- /usr/to/python ./install.py --clang-completer
- if you use additional completers with YCM, you should add the approriate flags
  to the above line.
- (--js-completer for javascript completion) 



#### Json compilation database
1. format
- directory: all path specified in the command or file field must be either relative or absolute to this path.


#### reference

1. [YouCompleteMe](https://github.com/ycm-core/YouCompleteMe)
2. [YouCompleteMe Trouble Shooting](https://github.com/ycm-core/YouCompleteMe/wiki/Troubleshooting-steps-for-ycmd-server-SHUT-DOWN)
3. [build completeme](https://stackoverflow.com/questions/40108521/difficulty-with-python-while-installing-youcompleteme-in-vim)
4. [JSON compilation database](https://clang.llvm.org/docs/JSONCompilationDatabase.html)