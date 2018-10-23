---
title: Seminar 3 - Maximum Likelihood decision 
subtitle: DEDP
documentclass: scrartcl
fontsize: 12pt
---

1. Consider the problem of deciding between two possible signals, $s_0(t) = cos(2 \pi t)$ and $s_1(t) = sin(2 \pi t)$.
The receiver takes one sample, at time $t_0 = 0.75$, and the obtained value is $r = 3.5$.
    a. Write the expressions of the two conditional distributions of the sample
    a. Considering that the noise is white gaussian noise, what is the decision based on the Maximum Likelihood criterion?
    b. What is the **best** moment $t_0$ for sampling, in order to best discriminate between the signals? Justify.
    b. What is the **worst** moment $t_0$ for sampling, in order to discriminate between the signals? Justify.
    b. Repeat a. in the case the signal $0$ is affected uniform noise $\mathcal{U}[-4,4]$? What is the problem here
    b. What is the maximum variance of a uniform noise, in order to be able to take a decision 
    with the ML criterion for $r = 3.5$?


2. A signal can have four possible values: -6, -2, 2, 6. Each value
lasts for 1 second. The signal is affected
by white noise with normal distribution. The receiver takes 1 sample per second.
Using ML criterion, decide what signal has been transmitted, if the received samples are:
$$4, 6.6, -5.2, 1.1, 0.3, -1.5, 7, -7, 4.4$$

3. A signal can have two possible values, $s_0 = -3$ or $s_1 = 3$. The signal is affected
by gaussian noise with distribution $\mathcal{N}(0, 1)$. The receiver performs ML decision based on a single sample.
    a. What is the maximum variance $\sigma^2$ of the noise, such that
    the probability of wrongly detecting $s_1$ if the true signal is $s_0$
    is at most $10^{-3}$
    b. If the noise variance is $\sigma^2 = 0.5$, what is the minimum gap 
    between the two signal levels ($s_1 - s_0$) such that the probability of correct detection if the true signal is $s_1$
    is at least 0.9999?
    
 
