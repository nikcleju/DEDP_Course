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

1. Generate a 100-samples long sinusoidal signal with frequency $f = 0.02$,
and add over it normal noise with distribution $\mathcal{N}(0, \sigma^2 = 2)$.
Name the resulting vector `data`. Plot the `data` vector.

2. Estimate the frequency $\hat{f}$ of the signal via Maximum Likelihood estimation,
based only on the `data` vector.
    * Write the mathematical expression of the likelihood function $w(\vec{r} | f)$
    * Compute numerically the value of likelihood function for $f$ going from 0 to 0.5, in 200 equally-spaced values
    * Maximum Likelihood: choose $\hat{f}_{ML}$ as the value which maximizes the likelihood
    * Display $\hat{f}_{ML}$, and plot the resulting sinusoidal along the original
    * Try changing the length of the data. How is the estimation accuracy affected?
    * Try changing the variance of the noise. How is the estimation accuracy affected?

3. Suppose that for $f$ we know a *prior distribution* $w(f)$, displayed on the whiteboard.
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

