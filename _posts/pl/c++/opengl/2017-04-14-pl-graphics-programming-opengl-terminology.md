--- 
layout: post 
title: "OpenGL: Terminology" 
keywords: [] 
description: 
category: "PL"
tags: ["c++","graphics programming"]
--- 
{% include JB/setup %}

#### 1: Primitives
In order for OpenGl to know what to make of your collection of coordinates and color values OpenGL
requires you to hint what kind of render types you want to form with the data.
1. Do we want the data rendered as a collection of points, a collection of triangles or perhaps just
   one long line.
2. Those hints are called primitives and are given to OpenGL while calling any of the drawing
   commands.
3. Some of these hints are GL\_POINTS, GL\_TRIANGLES and GL\_LINE\_STRIP


#### 2: Fragment
1. A fragment in OpenGl is all the data required for OpenGL to render a single pixel.

#### 3: Normalized Device Coordinates(NDC)
Once your vertex coordinates have been processed in the vertex shader, they should be in normalized
device coordinates which is a small space where the x, y and z values vary from -1.0 to 1.0. Any
coordinates the fall outside this range will be discarded/clipped and won't be visible on your
screen.


