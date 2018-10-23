---
title: Seminar 4 - Decision criteria
subtitle: DEDP
documentclass: scrartcl
fontsize: 12pt
---

1. Consider the detection of a signal with two possible levels, 0 (hypothesis $H_0$) or 6 (hypothesis $H_1$). 
The signal is affected by noise with triangular distribution $[-5,5]$.
The receiver takes one sample $r = 3.5$.
    a. Find the decision for the sample $r = 3.5$ considering the following criteria:
        - Maximum Likelihood criterion.
        - Minimum probability of error criterion, if $P(H_0) = \frac{3}{4}$ and $P(H_1) = \frac{1}{4}$.
        - Minimum risk criterion, if $P(H_0) = \frac{3}{4}$ and $P(H_1) = \frac{1}{4}$ and the costs are:
            - $C_{00} = 0$
            - $C_{11} = 0$
            - $C_{01} = 5$
            - $C_{10} = 2$
    b. What is the probability of false alarm, $P(D_1 \cap H_0)$, for the third criterion above?

\ 

2. An information source provides two messages with probabilities $p(a_0) = \frac{2}{3}$ and $p(a_1) = \frac{1}{3}$.
The messages are encoded as constant signals with values $-5$ ($a_0$) and $5$ ($a_1$).
The signals are affected by noise with triangular distribution $[-10,10]$.
The receiver takes one sample $r$. Decision is done by comparing $r$ with a threshold value $T$.
    a. Find the threshold value $T$ according to the Neymar-Pearson criterion, considering $P_{fa} \leq 10^{-2}$
    b. What is the probability of correct detection, $P(D_1 \cap H_1)$?
