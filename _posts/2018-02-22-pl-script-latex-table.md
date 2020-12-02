---
layout: post
title: "Latex: Table"
keywords: ["Tikz", "PGF"]
description: 
category: "PL"
tags: ["latex","script"]
---
#### Command
1. latex provides table environment to typeset a table
2. the paramaters follow tabular command specify the alignment each column
3. the vertical line decides to render the vertical line separated the table or
   not.

```latex
\begin{table}[h!]
	\begin{center}
		\caption{first table}
		\begin{tabular}{l|c|r}
			\hline
			Value 1 & value 2 & value 3\\
			\hline
			1 & 4.2    & d\\
			2 & 1234.6 & e\\
			2 & 123400.6 & e\\
			\hline
		\end{tabular}
	\end{center}
\end{table}
```


#### Package

##### 1. siunitx package
1. align numbers at decimal point

```latex
\usepackage{siunitx} % Required for alignment
\sisetup{
	  round-mode          = places, % Rounds numbers
	    round-precision     = 2, % to 2 places
}
```

##### 2. multirow package
1. grammar: \multirow{NUMBER_OF_ROWS}{WIDTH}{CONTENT}
- It's used to make a row span several cells
- Use an asterisk as an argument for the width, it means, this width should be
  determined automatically.


```latex
\begin{table}[h!]
	\begin{center}
		\caption{first table}
		\begin{tabular}{l|c|r}
			\toprule
			\textbf{Value 1} & \textbf{Value 2} & \textbf{Value 3}\\
			\midrule
			\multirow{3}{*}{2} & 4.2    & d\\
			 & 1234.6 & e\\
			 & 123400.6 & e\\
			\bottomrule
		\end{tabular}
	\end{center}
\end{table}
```

##### 3. booktabs package
1. booktabs package provides much prettier horizontal separator. 
```latex
\begin{table}[h!]
	\begin{center}
		\caption{first table}
		\begin{tabular}{l|c|r}
			\toprule
			\textbf{Value 1} & \textbf{Value 2} & \textbf{Value 3}\\
			\midrule
			1 & 4.2    & d\\
			2 & 1234.6 & e\\
			2 & 123400.6 & e\\
			\bottomrule
		\end{tabular}
	\end{center}
\end{table}
```

##### 4. longtable package
If you have a lot of rows in your table, the table will be cropped at the bottom of the page,
longtable package provides a convenient to make tables span multiple pages.

##### 5. rotating package
1. If we add too many columns, we might be getting a table that's too wide for the page. In this
situation, it's often best to simply rotate the table and print it in sideways.
2. replace the table environment with sidewaystable environment

```latex
\begin{sidewaystable}[h!]
	\begin{center}
		\caption{first table}
		\begin{tabular}{lSr}
			\hline
			Value 1 & value 2 & value 3\\
			\hline
			1 & 4.2    & d\\
			2 & 1234.6 & e\\
			2 & 123400.6 & e\\
			\hline
		\end{tabular}
	\end{center}
\end{sidewaystable}
```

##### 6. mdwtab package
mdwtab.sty which are used to format tables. 


#### threeparttable package
Add notes under the table
1. this package faciliate tables with caption and notes.
2. A threeparttable does not float, but you can put it in a table environment.
   This causes extra typing, gives more flexibility
3. There is nothing automatic about the notes, you must specify the identifier
   in the body of the table.

```latex
\begin{table}
	\centering
	\begin{threeparttable}
		\caption{Three Part Table}
		\begin{tabular}{lllll}
			\toprule
			1 \tnote{1} & 2& 2& 2& 200000000000\\
			3  & 4& 4& 4& 4\\
			\bottomrule
		\end{tabular}
		\begin{tablenotes}
		\item[1] the first note
		\end{tablenotes}
	\end{threeparttable}
\end{table}
```


#### Reference
1. [tables](https://www.latex-tutorial.com/tutorials/tables/)
2. [Threeparttable](http://texdoc.net/texmf-dist/doc/latex/threeparttable/threeparttable.pdf)
