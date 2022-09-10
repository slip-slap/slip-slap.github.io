#### Problem: No symbol table is loaded

```shell
clang++ -std=c++11 system.cpp -ggdb
```

#### Problem: hang at debug
inside the gdb

```cpp
set startup-with-shell off
```


#### Reference
1. [no symbol table is loaded](https://coderwall.com/p/wyb2ug/how-fix-the-no-symbol-table-is-loaded-gdb-issue-on-mountain-lion)
2. [documentation](https://sourceware.org/gdb/current/onlinedocs/gdb/)

