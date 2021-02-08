---
layout: post
title: "D.P.: Open Closed Principle(OCP)"
keywords: []
description: ""
category: "Algorithm"
tags: ["D.P."]
---
{% include JB/setup %}


#### Background
In most object-oriented code, different objects must deal with one another in
some fashion. What then happens when a particular object needs to be changed?
As with responsibility changes, this poses a challenge for the maintenance of
downstream objects that could inadvertently be affected by the change.  
- One way to reduce the impact of this challenge is to adhere to the second of
  the SOLID principles: the Open-Closed Principle


#### OCP
1. open for extension, but closed for modification
- you can always add new code to an object, but should never change the design
  of old code.

