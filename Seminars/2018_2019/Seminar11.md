---
title: Seminar 11
subtitle: DEDP
documentclass: scrartcl
fontsize: 12pt
---

\newcommand*{\underuparrow}[1]{\ensuremath{\underset{\uparrow}{#1}}}
\renewcommand{\vec}[1]{\mathbf{#1}}
\newcommand{\erf}{\operatorname{erf}}

Remaining exercises from 2 weeks ago

1. Consider the k-NN algorithm with the following training set:
* Class A:
$$\vec{v}_1 = \begin{bmatrix}2 \\ -4\end{bmatrix}\;
\vec{v}_2 = \begin{bmatrix}1.5 \\ -5\end{bmatrix}\;
\vec{v}_3 = \begin{bmatrix}-2.5 \\ 6\end{bmatrix}\;
\vec{v}_4 = \begin{bmatrix}-3 \\ 4.5\end{bmatrix}\;
\vec{v}_5 = \begin{bmatrix}2.5 \\ -5\end{bmatrix}$$
* Class B:
$$\vec{v}_6 = \begin{bmatrix}3 \\ 1.5\end{bmatrix}\;
\vec{v}_7 = \begin{bmatrix}-1 \\ 1\end{bmatrix}\;
\vec{v}_8 = \begin{bmatrix}-4 \\ -3\end{bmatrix}\;
\vec{v}_9 = \begin{bmatrix}-3 \\ 0\end{bmatrix}\;
\vec{v}_10 = \begin{bmatrix}-2.5 \\ 3\end{bmatrix}$$

    Compute the class of the vector $\vec{x} = \begin{bmatrix}-2.5 \\ 5 \end{bmatrix}$
using the k-NN algorithm, with $k=1$, $k=3$, $k=5$, $k=7$ and $k=9$

2. Consider the following data
$$\vec{v} = \left\lbrace v_i \right\rbrace = [ 1.1, 0.9, 
5.5, 0.6, 5, 6, 1.3, 4.8, 6, 0.8 ] $$

    Use the k-Means algorithm to find the two centroids $\vec{c}_1$ and $\vec{c}_2$,
starting from two random values $\vec{c}_1 = 0.95$ and $\vec{c}_2 = 0.96$. Perform
5 iterations of the algorithm.