---
layout: post
title: "D.S.: Tree"
keywords: []
description: 
category: "CS"
tags: ["Algorithm","D.S."]
---
{% include JB/setup %}

#### Array Representaion

#### Rule
1. if a Node is at index $i$
2. its left child is at $2*i$
3. its left child is at $2*i+1$
4. its parent is at $i/2$


#### Linked list presentation of Tree
1. we can based on the position relationship between parent and child, to create
   a tree.





```java
class BiTreeNode{
	public char name;
	public BiTreeNode left;
	public BiTreeNode right;
}
class BiTree{
	int index=-1;
	int leftDeep=0;
	int rightDeep=0;
	public void createBiTree(BiTreeNode node){
		String str=new String("AG##C##");
		index++;
		if(str.charAt(index)=='#'){
			node=null;
		}else {
			node.name=str.charAt(index);
			node.left=new BiTreeNode();
			createBiTree(node.left);
			node.right=new BiTreeNode();
			createBiTree(node.right);
		}
	}
	public void display(BiTreeNode node){
		if(node.name!='\u0000'){
		System.out.println(Character.valueOf(node.name));
		}
		if(node.left!=null){
			display(node.left);
		}
		if(node.right!=null){
		display(node.right);
		}
	}
	public void treeDeep(BiTreeNode head){
		if(head.left!=null){
			treeDeep(head.left);
			leftDeep++;
		}
		if(head.right!=null){
			treeDeep(head.right);
			rightDeep++;
		}
		System.out.println(leftDeep);
		System.out.println(rightDeep);

	}
}
```
