---
layout: post
title: "Editor: youcompleteme"
keywords: []
description: 
category: "PL"
tags: ["editor","script"]
---
{% include JB/setup %}

#### The Installation of YouCompleteMe 
Maybe this is the most difficult plugin to install
1. YouCompleteMe itself work in client-server pattern
2. Everytime you start vim, the **thread systemd** will begin to work on some
   port. 
3. Actualy, you can start **system manually**, to check whether you install it
   properly

```shell
cd /path/to/YouCompleteMe/third_party/ycmd/
cat PYTHON_USED_DURING_BUILDING
/some/path/to/python3
cp ycmd/default_settings.json .
/some/path/to/python3 ycmd --options_file=default_settings.json
serving on http://localhost:<some port>
```

##### With Python
Youcompleteme will complete your code according to the python interpreter you refer
to in the vim configuration file.
```shell
let g:ycm_python_interpreter_path = '/Users/jordan/miniforge3/envs/env_tf/bin/python'
```



##### With C++
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
