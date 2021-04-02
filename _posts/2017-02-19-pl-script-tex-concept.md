---
layout: post
title: "Tex: Concept"
keywords: []
description: 
category: "PL"
tags: ["latex","script"]
---

#### 1. Active character
An active character is a character that has a definition, e.g., a macro definition, associated with it.
- An active character is a special kind of control sequence
- If Tex encounters an active character that does not have an associated definition,
it will complain about an undefined control sequence.

#### 2. alignment
An alignment is a construct for aligning material, such as a table, in columns
or rows. To form an alignment you need to:
- describe the layout of the columns or rows
- tell Tex what material goes into the columns or rows

##### 3. argument
An argument contains text that is passed to a command.
- The arguments of a command complete the description of what the command is supposed to do.
- The command can either be a primitive command or a macro.

#### 4. Glue
Glue is blank space that can stretch or shrink.
- Glue gives Tex the flexibility that it needs in order to produce handsome documents
- Horizontal glue: occurs within horizontal lists
- Vertical glue: occurs within vertical lists.


#### 4. box
A box is a rectangle of material to be typeset.
- A single character is a box by itself, and an entire page is also a box.
- Tex forms a page as a nest of boxes with boxes with boxes.
- The outermost box is the page itself
- The inntermost boxes are mostly single characters
- Single lines are boxes that are somewhere in the middle.
- A line is a box containing a sequence of character boxes, and a page is a box containing a sequence of line boxes.

#### 5. category code
The category code of a character determines that character's role in Tex
- For instance, Tex assigns a certain role to letters, another to space characters.
- Tex attaches a code to each character that it reads. When Tex reads the
  letter 'r', for example, it ordinarily attaches the category code 11 to it.

#### 6. Groups
A group consists of material enclosed in matching left and right braces({ and })
- By placing a command within a group, you can limit its effects to the material within the group.


#### 3. Anatomy of Tex
- Using its "eyes", Tex reads characters from input files and passes them to
  its mouth. Since an input file can contain \input commands.
- Using its mouth, Tex assembles the characters into tokens and passes them to its gullet.
- Using gullet, Tex expands any macros, conditionals, and similar constructs
  that it finds and passes the resulting sequence of tokens to Tex's stomach.
- Using stomach
- Using its intestines, Tex transforms the pages produced by its stomach into a
  form intended for processing by other programs, it then sends the transformed
  output to the .dvi file.




#### Galois
1. Tex is a programming language.

