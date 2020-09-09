--- 
layout: post 
title: "Graphics Programming: OpenGL Texture" 
keywords: [] 
description: 
category: "PL"
tags: ["c++","gpu"]
--- 
{% include JB/setup %}


#### Introduction
1. Aside from images, textures can also be used to store a large collection of data to send to the
   shaders, but we'll leave that for a different topic. 
- A texture is a 2D image (even 1D and 3D textures exist) used to add detail to an object


####
1. In order to map a texture to the triangle we need to tell each vertex of the triangle which part of
the texture is corresponds to.
2. Each vertex should thus have a texture coordinate associated with them that specifies what part
   of the texture image to sample from.


#### Terminology
1. Retrieving the texture color using texture coordinates is called sampling.


```cpp
Gluint texture;
glGenTextures(1,&texture);
glBindTexture(GL_TEXTURE_2D, texture);
glTexImage2D(GL_TEXTURE_2D, 0, GL_RGB, width, height, 0, GL_RGB, GL_UNSIGNED_BYTE, image);
glGenerateMipmap(GL_TEXTURE_2D);
```


2. Appling textures

```cpp
GLfloat vertices[] = {
	// Positions // Colors // Texture Coords
	0.5f, 0.5f, 0.0f, 1.0f, 0.0f, 0.0f, 1.0f, 1.0f, // Top Right
	0.5f, -0.5f, 0.0f, 0.0f, 1.0f, 0.0f, 1.0f, 0.0f, // Bottom Right
	-0.5f, -0.5f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, // Bottom Left
	-0.5f, 0.5f, 0.0f, 1.0f, 1.0f, 0.0f, 0.0f, 1.0f // Top Left
};
```
