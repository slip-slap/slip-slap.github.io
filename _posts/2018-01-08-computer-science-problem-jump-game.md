---
layout: post
title: "Jump Game"
keywords: []
description: ""
category: "CS"
tags: []
---
{% include JB/setup %}

####
1. Given an array of non-negative integers, you are initially positioned at the
   first index of the array.
2. Each element in the array represents your maximum jump length at that
   position.
3. Determine if you are able to reach the last index.



```java

public class Solution{
    public static boolean canJump(int[] nums){
        int lastPos = nums.length - 1;
        for(int i=nums.length-1;i>=0;i--){
            if(i+nums[i]>=lastPos){
                lastPos = i;
            }
        }
        return lastPos == 0;
    }



    public static void main (String[] args) {
        System.out.println("haha");
        int[] a =new int[]{2,3,1,1,4};
        Solution.canJump(a);
    }
}

```
