--- 
layout: post 
title: "OpenGL: Coordinate" 
keywords: [] 
description: 
category: "PL"
tags: ["c++","graphics programming"]
--- 
{% include JB/setup %}

The reason we are transforming our vertices into all these different spaces is that some operations
make more sense or are easizer to use in certain coordinate systems.
- For example, when modifying your object it makes more sense to do this in local space, while
  calculating certain operations on the object with respect to the position of other objects makes
  more sense in world coordinate and so on.

1. Local coordinates are the coordinates of your object relative to its local origin; they're the
   coordinates your object begins in.
2. The next step is to transform the local coordinates to world-space coordinates which are
   coordinates in respect of a larger world. These coordinates are relative to a global origin of
   the world, together with many other objects also placed relative to the world's origin.
- The coordinates of your object are transformed from local to world space, this is accomplished
  with the model matrix
3. Next we transform the world coordinates to view-space coordinates in such a way that each
   coordinates is as seen from the camera or viewer's point of view.
- The view space is what people ususaly refer to as the camera of OpenGL(it is sometimes also known
  as the camera space or eye space)
- view matrix that transform world coordinates to view space.
4. After the coordinates are in view space we want to project them to clip coordinates. Clip
   coordinates are processed to the -1.0 and 1.0 range and determine which vertices will end up on
   the screen.
- projection matrix: transform vertex coordinates from view to clip-space.
5. And lastly we transform the clip coordinates to screen coordinates in a process we call viewport
   transform that transforms the coordinate from -1.0 and 1.0 to the coordinate range defined by
   glViewport. The resulting coordinates are then send to the rasterizer to turn them into
   fragments.


#### Look At
$
\text {LookAt}=\left[\begin{array}{cccc}R_{-} x & R_{-} y & R_{-} z & 0 \\ U_{-} x & U_{-y} & U_{-z}
& 0 \\ D_{-} x & D_{-} y & D_{-z} & 0 \\ 0 & 0 & 0 & 1\end{array}\right] *\left[\begin{array}{cccc}1
& 0 & 0 & -P_{-} x \\ 0 & 1 & 0 & -P_{-y} \\ 0 & 0 & 1 & -P_{-z} \\ 0 & 0 & 0 & 1\end{array}\right]
$
1. R is the right vector.
2. U is the up vector.
3. D is the direction vector.
4. P is the camera's position vector.

