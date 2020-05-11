---
layout: post
title: "D.S.: Stack,List and Map"
keywords: []
description: 
category: "CS"
tags: ["D.S."]
---
{% include JB/setup %}





<hr />

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



##### 基于数组和链表的map实现
1. 数组用来存放哈希表
2. 链表用来存放key

```java
class HashTable{
	//哈希表
	private static int hashTableSize=35;
	//链表
	private  List<Integer> list=new ArrayList<>();
	private int[] hashTable=null;
	//创建hash表
	public void createHashTable(){
		hashTable =new int[hashTableSize];
		//初始化hash表
		for(int i=0;i<hashTable.length;i++){
			hashTable[i]=1;
		}
	}
	public int getTableAddress(int key){
		return key%31;
	}
	public void put(int number,int age){
		int address=getTableAddress(number);
		hashTable[address]=age;
		list.add(number);
	}
	//显示哈希表
	public void display(){
		for(Integer var:list){
		//计算在hash表中的位置
		int address=getTableAddress(var.intValue());
		//hash表的值
		int value=hashTable[address];
		StringBuilder sb=new StringBuilder();
		sb.append(var);
		sb.append(": ");
		sb.append(value);
		System.out.println(sb);
    	}
    }
	//根据key找到value
	public int find(int key){
		int address=getTableAddress(key);
		return hashTable[address];
	}
}
```
