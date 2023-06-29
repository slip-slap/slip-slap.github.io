---
layout: post
title: "Latex: Table"
keywords: ["Tikz", "PGF"]
description: 
category: "PL"
tags: ["latex","script"]
---

#### label and caption
\caption has to come before \label. This applies to figures and tables in general



#### Adjustment of row height and column width
1. To change only one particular row you could use the command \rule with a
   width of zero and the height you want as parameter, for example
   \rule{0pt}{25pt}

```latex
\documentclass{article}
\begin{document}

\begin{tabular}{|r|c|l|}
\hline 
A & B & C \\
\hline 
1 & 2 & 3 \\
\hline 
\end{tabular}
\begin{tabular}{|r|c|l|}
\hline 
A & B & C \\
\hline 
\rule{0pt}{25pt}1 & 2 & 3 \\
\hline 
\end{tabular}
\end{document}
```


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


#### 2 Package

##### 2.1 siunitx package
1. align numbers at decimal point

```latex
  \usepackage{siunitx} % Required for alignment
  \sisetup{
	  round-mode          = places, % Rounds numbers
	    round-precision     = 2, % to 2 places
}
```
##### makecell package
add line break in a table cell

```latex

\begin{table*}
	\normalsize
\caption{The optimum lay-ups using two distinct fiber angles under various biaxial loading cases}
\label{tab:two_distinct_angle}
\centering
\begin{tabular}{clccc}
	\toprule
	\textbf{Loading} $N_{x}/N_{y}/N_{xy}$ \textbf{(MPa m)}   &
	\makecell{\textbf{Optimum lay-up } \\ \textbf{sequences}  }                        &
	\textbf{Laminate thickness} &  \makecell{\textbf{Safety factor } \\
	\textbf{for Tsai-wu}}  &
	\makecell{\textbf{Safety factor } \\ \textbf{for  maximum stress}}
	 \\
	\midrule
	10/5/0        &  $[33_{29}/\text{-}39_{25}/\bar{\text{-}39}]_s$      &     109               &  1.0074      &  1.0246  \\
	\bottomrule
\end{tabular}
\end{table*}
```

##### 2.2  multirow package
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

##### 2.3 multicol package

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

##### 8. resizebox

```latex
\begin{table}
	\normalsize
\caption{Comparison with the results of DSA}
\label{tab:comparision}
\centering
	%\resizebox{.9\textwidth}{!}{
	\resizebox{10cm}{!}{
\begin{tabular}{c|cccc|lccc}
	\toprule
	\textbf{Loading}	    & \multicolumn {4}{c}{\textbf{Akbulut and Sonmez's\cite{akbulut2008optimum} Study}}   & \multicolumn {4}{c}{\textbf{Present Study}}\\
	\midrule
	 $N_{x}/N_{y}/N_{xy}$   & Optimum lay-up			        & laminate  & TW & MS   & Optimum lay-up & laminate  & TW & MS \\
	  (MPa m)	            & sequences					        & thickness &    &      & sequences	     & thickness &    &    \\
	\midrule
	  80/5/0                 &  $[21_{25}/\text{-}19_{28}]_s$     &  106      &  1.0113  &  1.2213 & $[\text{-}20_{27}/21_{25}/\bar{25}]_s$             &     105      &  1.0029      &  1.2063    \\
	  120/5/0                &  $[17_{35}/\text{-}17_{35}]_s$     &  140      &  1.0030  &  1.0950 & $[\text{-}18_{34}/17_{36}]_s$                     &     140      &  1.0000      &  1.0898     \\
	\bottomrule
\end{tabular}
}
\end{table}
```

##### 9. adjustbox
```latex
\begin{table}
\centering
\caption{Different Activation Functions}
\begin{adjustbox}{width=1\textwidth}
\label{tab:transfer_function}
	\begin{tabular}{lllc}
			\toprule
			Type & Description  & Formula & Range  \\
			\midrule
			Linear   & The output is proportional to the input & $f(x)=cx$                  &  $(-\infty, +\infty)$ \\
			Softplus & A family of S-shaped functions          & $f(x) = ln(1+e^x)$         & $(0, +\infty)$ \\
			\bottomrule
	\end{tabular}
\end{adjustbox}
\end{table}
```

#### Reference
1. [tables](https://www.latex-tutorial.com/tutorials/tables/)
2. [Threeparttable](http://texdoc.net/texmf-dist/doc/latex/threeparttable/threeparttable.pdf)
3. [stackoverflow reduce size of latex table](https://stackoverflow.com/questions/4809482/how-do-i-reduce-the-size-of-an-entire-latex-table)
4. [Adjustment of width and height](https://www.sascha-frank.com/Faq/tables_four.html)
5. [position of caption and label in table and figure](https://tex.stackexchange.com/questions/19651/reference-to-a-figure-uses-the-sections-number)
