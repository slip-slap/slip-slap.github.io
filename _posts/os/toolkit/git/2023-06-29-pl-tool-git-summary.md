---
layout: post
title: "Git: Summary"
keywords: []
description: 
category: "OS"
tags: ["toolkit","git"]
---
{% include JB/setup %}
#### update 20230629
1. The common operations in a folder are simple: create a file, check files,
   delete a file.
- There are correspondings in git. git add, git ls-files, git rm git restore
- Just think of the index area is a normal directory, you can do whatever you want.


#### 1. What is version control? 
1. Records changes to a file or set of files over time
2. Revert selected files back to a previous state, revert the entire projected
   back to a previous state.

#### 2. What is the problem ?
1. assume you are a coder,  and work on a project. Accasionaly you revise you
   code, some days later, you want get things back to where they were.
- one solution is every time you change your code, you make a copy, but as time
  goes on, this is a nightmare. Based on the timeline, we packed the code we get
  anywhere we want.
- the second solution is git, and git is an artifact.


#### 3. The Philosphy
1. if you check the code in your project carefully, your file can be divided
   into two classes, **folder and text**.
- In git, both the **folder and text** ,separately, are abstracted as **tree 
  and blob**, we call them objects in general.
2. we are not satisfied with the timeline, we use a more complicated structure
   which is called **graph** to track all the change, each point in a timeline
   is a snapshot of the project. We have a fancy terminology for snapshot, which
   is called **commits**
- how to connect these **graph**, and what's the direction of the two node ? The
  solution is pointer, and the direction is from descendant to ancestor.
3. what's the name of each node ? How to identify them ?
- It use hash function, but it's not readable, so we create a reference to them,
  you can it branch.


#### Summary

You need have a git soul when you use git.

You are not in a default file system, it's new, and complete different.

You go to file source, copy it to the destination when you use the classic file
system, in which the source is a directory.

In git, you still go to the source when you want get something back, but it is
not a directory any more, it's a commit. you go to a commit, and you get
something back. Keep that in mind.

Thinking things differently is realy a beautiful thing.


