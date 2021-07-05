---
layout: post
title: "A.D.T.: Binary Search Tree Implementation"
keywords: []
description: ""
category: "Algorithm"
tags: ["A.D.T."]
---
{% include JB/setup %}


```cpp

#include <iostream>

struct node{
    int data;
    struct node *leftChild=nullptr;
    struct node *rightChild=nullptr;
    struct node *parent=nullptr;
};

void insert(struct node *node,int  data);
void display(struct node *node);
int getNodeHeight(struct node *node);
int getBalanceFactor(struct node *node);
int max(int x, int y);
void rightRotation(struct node *node);


int main(){
    struct node *root = new node();
    root->data = 10;
    insert(root,9);
    insert(root,8);
    insert(root,11);
    insert(root,7);
    insert(root,12);
    display(root);
    int height = getNodeHeight(root);
    std::cout<<"node height is "<<height<<std::endl;
    int balancefactor = getBalanceFactor(root);
    std::cout<<"node balance factoris "<<balancefactor<<std::endl;

}

void insert(struct node* root,int  data){
    if(root->data > data){
        // check the left child of current node  is nullptr or not;
        // if it is not nullptr
        if(root->leftChild != nullptr){
        insert(root->leftChild, data);
        }else{
        struct node *leftChild =  new node();
        leftChild->data = data;
        root->leftChild = leftChild;
        }
    }

    if(root->data < data){
        // check the left child of current node  is nullptr or not;
        // if it is not nullptr
        if(root->rightChild!= nullptr){
        insert(root->rightChild, data);
        }else{
        struct node *rightChild=  new node();
        rightChild->data = data;
        root->rightChild= rightChild;
        }
    }
}

void display(struct node *node){
         if(node == nullptr){
             std::cout<< "visit leaf node"<< std::endl;
             return;
         }else{

             std::cout<<node->data << std::endl;
         }
         display(node->leftChild);
         display(node->rightChild);
}

int max(int x, int y){
    if(x > y){
        return x;
    }else{
        return y;
    }
}

int getNodeHeight(struct node *node){
    if(node == nullptr){
        return 0;
    }
    int lh= 1 + getNodeHeight(node->leftChild);  
    int rh= 1 + getNodeHeight(node->rightChild);  
    return max(lh, rh);
}

int getBalanceFactor(struct node *root){
    int left_subtree_height = getNodeHeight(root->leftChild);
    int right_subtree_height = getNodeHeight(root->rightChild);
    return left_subtree_height - right_subtree_height;
}

```



