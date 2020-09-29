---
layout: post
title: "Compiler: Lexical Analysis"
keywords: []
description: 
category: "CS" 
tags: ["compiler"]
---
{% include JB/setup %}

#### 1. Why bother?
1. Simplicity of design is the most important consideration.  The separation of lexical and
   syntactic analysis often allows us to simplify at least one of these tasks.
- For example, a parser that had to deal with comments and whitespace as syntactic units would be
  considerably more complex than one that can assume comments and whitespace have already been
  removed by the lexical analyzer. 
- If we are designing a new language, separating lexical and syntactic concerns can lead to a
  cleaner overall langugae design.
2. Compiler efficiency is improved. A separate lexical analyzer allows us to apply specialized
   techniques that serve only the lexical task, not the job of parsing. In addition, specialized
   buffering techniques for reading input characters can speed up the compiler significantly.


#### 2. Terminology
1. a token is a pair consisting of a token name and an optional attribute value. 
- The token name is an abstract symbol representing a kind of lexical unit, e.g., a paritcular
  keyword, or a sequence of input characters denoting an identifier.
- The token names are the input symbols that the parser processes.

2. A pattern is a description of the form that the lexemes of a token may take.
- In the case of a kewword as a token, the pattern is just the sequence of characters that form the
  keywod.
- For identifiers and some other tokens, the pattern is a more complex structure that is matched by
  many strings.
3. A lexeme is a sequence of characters in the source program that matches the pattern for a token
   and is identified by the lexical analyzer as an instance of that token.

#### 3. Attributes for Tokens
1. When more than one lexeme can match a pattern, the lexical analyzer must provide the subsequent
compiler phases additional information about the particular lexeme that matched.
- For example, the pattern for token number matches both 0 and 1, but it is extremely important for
  the code generator to know which lexeme was found in the source program. Thus, in many cases the
  lexical analyzer returns to the parser not only a token name, but an attribute value that
  describues the lexeme represented by the token.

2. We shall assume that tokens have at most one associated attribute, although this attribute may
   have a structure that combines several pieces of information.
- The most important example is the token id, where we need to associate with the token a great deal
  of information
- Normally, information about an identifier -e.g., its lexeme, its type, and the location at which
  it is first found is kept in the symbol table.


| TOKEN      | INFORMAL DESCRIPTION                  | SAMPLE LEXEMES |
|------------|---------------------------------------|----------------|
| if         | characters i,f                        | if             |
| else       | characters e, l, s, e                 | else           |
| comparison | < or > or <= or >=                    | <=,!=          |
| id         | letter followed by letters and digits | pi, score, D2  |
| number     | any numeric constant                  | 3.1415, 0.6    |
| literal    | anything but ", surround by "'s       | "core dumped"  |


#### 4. Lexical Errors
1. It is hard for a lexical analyzer to tell, without the aid of other components, that there is a
   source-code error.
- e.g., if the string fi is encountered for the first time in a C program; a lexical analyzer cannot
  tell whether fi is a misspelling of the keyword or an undeclared function indentifer.

#### 5. Transition Diagram
<img src="{{IMAGE_PATH}}/compiler-lexical-transition-diagram.png" />





