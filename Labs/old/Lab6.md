---
title: Parameter and Signal Estimation
subtitle: Laboratory 6, DEDP
documentclass: scrartcl
fontsize: 12pt
---

\newcommand{\grtlessH}{\underset{{H_0}}{\overset{H_{1}}{\gtrless}}}
\renewcommand{\vec}[1]{\mathbf{#1}}


# Objective

Experiment with Maximum Likelihood, Maximum A Posteriori and Minimum Mean
Squared Error estimation for a basic signal.

# Theoretical aspects


# Exercises

1. Generate a 300-samples long sinusoidal signal $s_\Theta = \sin(2 \pi f n)$ with frequency $f = 0.02$,
and add over it normal noise with distribution $\mathcal{N}(0, \sigma^2 = 2)$.
Name the resulting vector `r`. Plot the `r` vector.

2. Estimate the frequency $\hat{f}$ of the signal via Maximum Likelihood estimation,
based only on the `r` vector.
    * Write the mathematical expression of the Maximum Likelihood estimation in case of Gaussian noise (`Hint:` based on the Euclidean distance)
    * Generate 1000 candidate frequencies $f_k$ equally spaced from 0 to 0.5
    * Compute the Euclidean distance between `r` and a sine signal with each candidate frequency
    * Maximum Likelihood: choose $\hat{f}_{ML}$ as the candidate frequency which minimizes the Euclidean distance
    * Display $\hat{f}_{ML}$, and plot the resulting sinusoidal along the original
    * Try changing the length of the data. How is the estimation accuracy affected?
    * Try changing the variance of the noise. How is the estimation accuracy affected?

3. Estimate the amplitude $A$ of the signal via Maximum Likelihood Estimation, assuming the frequency is known to be $0.02$, based only on the $r$ vector. 
    
    Use a similar approach as in Exercise 2.
    
    Try different amplitude values of the signal in Exercise 1, and see if they are estimated correctly.
    
4. Repeat Exercise 3, but use the Gradient Descent algorithm for estimating $A$, instead of the polling strategy.

3. TO UPDATE: Suppose that for $f$ we know a *prior distribution* $w(f)$, displayed on the whiteboard.
Modify the previous example to implement Bayesian estimation.
    * Multiply the computed likelihood function from previous exercise with the prior distribution, for each point.
    The result is the *posterior* distribution.
    * Maximum A Posteriori: choose $\hat{f}_{MAP}$ as the value which maximizes the posterior distribution
    * Minimum Mean Squared Error: : choose $\hat{f}_{MMSE}$ as the average value of the posterior distribution
    * Display $\hat{f}_{MAP}$ and $\hat{f}_{MMSE}$, and plot the resulting sinusoidal signals along the original and the ML one

4. *Signal inpainting (recover missing parts of signal)*. Randomly replace 20 samples from `data` with 0, to simulate missing data. 
Rerun exercise 3 and estimate the original signal. Plot the result(s) against the starting data (with the missing samples) to visualize the result.

# Final questions

1. TBD

