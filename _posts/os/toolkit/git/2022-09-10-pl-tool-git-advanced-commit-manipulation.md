---
layout: post
title: "Git: Commit Manipulation"
keywords: []
description: 
category: "OS"
tags: ["toolkit","git"]
---
{% include JB/setup %}

#### 1. Basic: Undoing a commint
One of the common undos takes place when you commit too early and possibly
forget to add some files, or you mess up your commit message. If you want to
redo that commit, make the additional changes you forgot, stage them, and commit
again using the --amend option
- When you're amending your last commit, you're not so much fixing it as
  replacing it entirely with a new, improved commit that pushes the old commit
  out of the way and puts the new commit in its place.
- Effectivelly, it's as if the previous commit never happened, and it won't show
  up in your repository history.

```shell
git commit -m 'Initial commit'
git add forgotten_file
git commit --amend
```

##### Example
you realize you forget modify a file after you make a commit.  suppose the
message associated with this commit is "fix reading bug".

<img align="left" src="{{IMAGE_PATH}}/git/git_amend.png" />  





#### 2. Medium: rebase

1. What *git rebase* does is modify the record of commit history. In nature, it
modify the commits.
2. This operation works by going to the common ancestor of the two branches(the one
you're on and the one you're rebasing onto), getting the diff introduced by each
commit of the branch you're on
- saving those diffs to temporary files
- resetting the current branch to the same commit as the branch you are rebasing
  onto, and finally applying each change in turn.



#### 3. Advance: reset
The soft reset just re-points HEAD to the last commit that you do not want to
squash. Neither the index nor the working tree are touched by the soft reset,
leaving the index in the desired state for your new commit (i.e. it already has
all the changes from the commits that you are about to “throw away”).

```shell
git reset --soft HEAD~3 &&
git commit
```



#### Reference
1. [squash commit](https://www.git-tower.com/learn/git/faq/git-squash#:~:text=To%20%22squash%22%20in%20Git%20means,stand%2Dalone%20git%20squash%20command.)
2. [squash commit with git reset](https://stackoverflow.com/questions/5189560/how-do-i-squash-my-last-n-commits-together)
