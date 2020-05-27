---
layout: post
title: "Latex: Tree"
keywords: ["Tikz", "PGF"]
description: 
category: "PL"
tags: ["latex"]
---



```tree
\begin{tikzpicture}
    \tikzstyle{level 1}=[sibling distance=12mm]
    \tikzstyle{level 2}=[sibling distance=12mm]
    \tikzstyle{level 3}=[sibling distance=12mm]
    \tikzstyle{level 4}=[sibling distance=12mm]
    \node (root) {foo(4)}
        child {
            child{
                child{
                    child
                    child
                    child
                }
                child
                child
            }
            child 
            child
        }
        child
        child;
    \node at (root-1) {foo(3)};
    \node at (root-2) {foo(2)};
    \node at (root-3) {print(4)};
    \node at (root-1-1) {foo(2)};
    \node at (root-1-2) {foo(1)};
    \node at (root-1-3) {print(3)};
    \node at (root-1-1-1) {foo(1)};
    \node at (root-1-1-2) {foo(0)};
    \node at (root-1-1-3) {print(2)};
    \node at (root-1-1-1-1) {foo(0)};
    \node at (root-1-1-1-2) {foo(-2)};
    \node at (root-1-1-1-3) {print(1)};
\end{tikzpicture}
```

