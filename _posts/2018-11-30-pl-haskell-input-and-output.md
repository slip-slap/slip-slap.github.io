--- 
layout: post 
title: "Haskell: Input and Output" 
keywords: [] 
description: 
category: "PL"
tags: ["haskell"] 
--- 
{% include JB/setup %}



```haskell
main = do
    putStrLn "Hello, what's your name?"
    name <- getLine
    putStrLn ("Hey " ++ name ++ ", you rock!")
```

1.  You can think of an I/O action as a box with little feet that will go out
	into the real world and do something there (like write some graffiti on a
	wall) and maybe bring back some data. Once it's fetched that data for you,
	the only way to open the box and get the data inside it is to use the <-
	construct. 
2. If we're taking data out of an I/O action, we can only take it out when we're
   inside another I/O action. This is how Haskell manages to neatly separate the
   pure and impure parts of our code.
3. $\textbf{getLine}$ is in a sense impure because its result value is not
   guaranteed to be the same when performed twice. That's why it's sort of
   tainted with the IO type constructor and we can only get that data out in I/O
   code. And because I/O code is tainted too, and computation that depends on
   tainted I/O data will have a tainted result.
4. I/O actions will only be performed when they are given a name of
   $\textbf{main}$ or when they're inside a bigger I/O action that we composed
   with a do block. We can also use a do block to glue together a few I/O
   actions and then we can use that I/O action in another do block and so on.
