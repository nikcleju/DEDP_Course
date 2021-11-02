---
title: | 
       | Seminar 3
       | Maximum Likelihood criterion
subtitle: DEDP
documentclass: scrartcl
fontsize: 12pt
---

1. Consider the problem of deciding between two constant signals, $s_0(t) = -1$ and $s_1(t) = 4$.
The signals are affected by AWGN with distribution $\mathcal{N}\;(\mu=0, \sigma^2=4)$.
The receiver takes one sample, at time $t_0 = 0.75$, and the obtained value is $r = 1.8$.

    a. Write the expressions of the two conditional distributions of the sample, and sketch them
    b. What is the decision taken with the Maximum Likelihood criterion?

1. Consider the problem of deciding between two possible signals, $s_0(t) = cos(2 \pi t)$ and $s_1(t) = sin(2 \pi t)$.
The signals are affected by AWGN with distribution $\mathcal{N}\;(\mu=0, \sigma^2=4)$.
The receiver takes one sample, at time $t_0 = 0.75$, and the obtained value is $r = 3.5$.

    a. Write the expressions of the two conditional distributions of the sample, and sketch them
    b. What is the decision taken with the Maximum Likelihood criterion?
    c. What is the **best** moment $t_0$ for sampling, in order to best discriminate between the signals? Justify.
    d. What is the **worst** moment $t_0$ for sampling, in order to discriminate between the signals? Justify.
    e. Repeat a) and b) in case the noise has uniform distribution $\mathcal{U}[-4,4]$. Is there a problem with the decision?
    f. What is the maximum variance of a uniform noise, with zero-mean, in order to still be able to take a decision 
    with the ML criterion for $r = 3.5$?

