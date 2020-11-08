---
title: | 
       | Seminar 3
       | Maximum Likelihood criterion
subtitle: DEDP
documentclass: scrartcl
fontsize: 12pt
---

1. Consider the problem of deciding between two possible signals, $s_0(t) = cos(2 \pi t)$ and $s_1(t) = sin(2 \pi t)$.
The signals are affected by AWGN with distribution $\mathcal{N}\;(\mu=0, \sigma^2=4)$.
The receiver takes one sample, at time $t_0 = 0.75$, and the obtained value is $r = 3.5$.

    a. Write the expressions of the two conditional distributions of the sample, and sketch them
    a. What is the decision taken with the Maximum Likelihood criterion?
    b. What is the **best** moment $t_0$ for sampling, in order to best discriminate between the signals? Justify.
    b. What is the **worst** moment $t_0$ for sampling, in order to discriminate between the signals? Justify.
    b. Repeat a) and b) in case the noise has uniform distribution $\mathcal{U}[-4,4]$. Is there a problem with the decision?
    b. What is the maximum variance of a uniform noise, with zero-mean, in order to still be able to take a decision 
    with the ML criterion for $r = 3.5$?

1. A signal can have four possible values: -6, -2, 2, 6. Each value
lasts for 1 second. The signal is affected
by white noise with normal distribution. The receiver takes 1 sample per second.
Using ML criterion, decide what signal has been transmitted, if the received samples are:
$$4, 6.6, -5.2, 1.1, 0.3, -1.5, 7, -7, 4.4$$

2. A signal can have two possible values, $s_0 = -3$ or $s_1 = 3$. The signal is affected
by gaussian noise with distribution $\mathcal{N}(0, 1)$. The receiver performs ML decision based on a single sample $r$.
    a. In hypothesis $H_0$, which for what values of $r$ do we get a false alarm?
    b. Compute the probability of false alarm
