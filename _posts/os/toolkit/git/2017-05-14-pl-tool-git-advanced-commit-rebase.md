---
layout: post
title: "Git: advanced commit-rebase"
keywords: []
description: 
category: "OS"
tags: ["toolkit","git"]
---
{% include JB/setup %}


#### Why bother?
What *git rebase* does is modify the record of commit history. In nature, it
modify the commits.


<img align="left" src="{{IMAGE_PATH}}/git_before_rebase.png" /> 
<img align="left" src="{{IMAGE_PATH}}/git_after_rebase.png" /> 



#### 2.2 git  rebase
This operation works by going to the common ancestor of the two branches(the one
you're on and the one you're rebasing onto), getting the diff introduced by each
commit of the branch you're on
- saving those diffs to temporary files
- resetting the current branch to the same commit as the branch you are rebasing
  onto, and finally applying each change in turn.
