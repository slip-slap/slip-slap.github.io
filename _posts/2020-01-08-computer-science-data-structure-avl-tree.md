---
layout: post
title: "D.S.: AVL Tree"
keywords: []
description: ""
category: "CS"
tags: ["D.S."]
---
{% include JB/setup %}


self-balancing binary search tree.


####  left rotate
1. we call it left rotate because the root move to the left.
- the trick, find the target node that want to put operation on
- if the operation is left rotate, than find the right child of the target node.
- if the operation is right rotate, than find the left child of the target node.

<img
src="{{IMAGE_PATH}}/computer-science-abstract-data-type-avl-tree-rotation.png" />

- What's the nature of left rotation and right rotation,  It's just a constant
  number of pointer changs, O(1)
- satisfy BST order property after change.
