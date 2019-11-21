---
title: Signal detection with multiple samples
subtitle: Laboratory 4, DEPI
documentclass: scrartcl
fontsize: 12pt
---

\newcommand{\grtlessH}{\underset{{H_0}}{\overset{H_{1}}{\gtrless}}}
\renewcommand{\vec}[1]{\mathbf{#1}}


# Objective

Visualize the signal detection rules for detection of signals based
on multiple samples

# Theoretical aspects

For detecting a constant signal with two possible levels $B$ (hypothesis $H_0$) and $A$ (hypothesis $H_1$), 
affected by Gaussian noise, based on multiple samples, the decision formula is:
$$\sum (r_i - B)^2 \grtlessH \sum (r_i - A)^2 + 2 \sigma^2 \ln{K}$$.

For Maximum Likelihood criterion, $K=1$. In this case, the equation 
can be interpreted geometrically as 
**choosing minimum Euclidean distance from point $\vec{r} = [r_1, r_2, ... r_N]$ to points $\vec{B} = [B, B, ...]$ and $\vec{A} = [A, A, ...]$**.

The Euclidian distance between two points $\vec{x} = [x_1, x_2, ... x_N]$ and $\vec{y} = [y_1, y_2, ... y_N]$ is
$$d(x,y) = \sqrt{\sum_i (x_i - y_i)^2}$$.

The general formula thus becomes:
$$\left[d(r,B)\right]^2 \grtlessH \left[d(r,A)\right]^2 + 2 \sigma^2 \ln{K}$$.

# Exercises

1. Simulate detection of a constant signal with two levels $B=0$ and $A=5$, based on two samples, as follows:
    * Generate a vector `data` of 1000 values $0$ or $1$, with equal probability (hint: use `rand()` and compare to 0.5).
    * Generate a $1000 \times 2$ matrix `points` of data samples defined as: 
        * row $i$ of `points` is $(B,B)$ if `data(i) is 0`, or
        * row $i$ of `points` is $(A,A)$ if `data(i) is 1`.
    * Add over it a random noise with normal distribution $\mathcal{N}(0, \sigma^2=2)$ (use a noise matrix of same size $1000 \times 2$).
    The result should be saved as the matrix `received`.
    * Implement the Maximum Likelihood decision rule for each row $i$ of the received samples.
    The result ($0$ or $1$) should be saved as vector `decision`.
    * Compare the decision result with the original data vector, and classify the result in a 1000-long vector `result` with the following values:
        * `result(i) = 0` if for bit $i$ there was a correct rejection
        * `result(i) = 1` if for bit $i$ there was a false alarm
        * `result(i) = 2` if for bit $i$ there was a miss
        * `result(i) = 3` if for bit $i$ there was a correct detection
    * Generate a **scatter plot** displaying the received data samples with different coloring of the decisions (*Hint*: check Matlab function `scatter()`).
    * What are the decision regions? What is the decision rule, geometrically? 

1. Repeat Exercise 1 for Minimum Probability of Error criterion with probabilities $P(H_0) = 2/3$ and $P(H_1) = 1/3$
    * Change the threshold value for comparing `rand()` to generate $0$ with probability 2/3 and $1$ with probability 1/3.
    * Modify the detection rule taking into account $K = \frac{P(H_0)}{P(H_1)}$.
    * Visualize the data. How does it look like?

1. Repeat Exercise 1 for four values of $K$: $K = 1$, $K = 5$, $K = 25$, $K = 125$.
Display the 4 scatter plots as subfigures of a figure window, arranged $2 \times 2$.

1. Repeat Exercise 2 for 3 samples.
    * The matrix's sizes should be $1000 \times 3$.
    * Detection rule should consider all three samples.


# Final questions

1. In a practical scenario, what is the disadvantage of using multiple samples for detection, compared to just 1?

