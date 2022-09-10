---
layout: post
title: "A.D.T.P.: Reverse String "
keywords: []
description: ""
category: "Algorithm"
tags: ["A.D.T."]
---
{% include JB/setup %}

#### 1. Reverse String
Write a function that takes a string as input and returns the string reversed

```java
public class Solution{
    public static String reverseString(String s){
        if(s == null || s.length() < 2) return s;
        int i = 0;
        int j = s.length() - 1;
        char[] chars = s.toCharArray();
        while(i < j){
            char c = chars[i];
            chars[i] = chars[j];
            chars[j] = c;
            i++;
            j--;
        }

        return new String(chars);
    }

    public static void main (String[] args) {
        System.out.println("haha");
        String a = new String("a big man sings a song");
        String result = Solution.reverseString(a);
        System.out.print(result);
    }
}

```


