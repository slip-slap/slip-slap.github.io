---
layout: post
title: "Git: Basic Snapshotting "
keywords: []
description: 
category: "PL"
tags: ["tool","git"]
---
{% include JB/setup %}

####

```shell
add
status
diff
commit
nots
restore
reset
rm
mv
```

#### Detached Head
1. Detached head means you are no longer on a branch, you have checked out a
   single commit in the history
- why we have this, what's the advantage?
- If you want to delete you changes associated with the detached Head, **you
  only need to checkout the branch you were on**
  


<br />  <br />
<img align="left"
src="{{IMAGE_PATH}}/os-software-git-basic-detach-head-before-switch.png" /> <br />
<br /> <br /> <br /> <br />

```shell
git switch liam
```

<img align="left"
src="{{IMAGE_PATH}}/os-software-git-basic-detach-head-after-switch.png" /> <br />
<br /> <br /> <br /> <br />

