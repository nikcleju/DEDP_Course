---
title: Seminar 8 - Criteria / Multiple samples
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


2. A signal can have two values, $0$ (hypothesis $H_0$) or $6$ (hypothesis $H_1$). 
The signal is affected by AWGN $\mathcal{N}(0, \sigma^2=1)$.
The receiver takes 5 samples with values $\left\{ 1.1, 4.4, 3.7, 4.1, 3.8 \right\}$.
    a. What is decision according to Maximum Likelihood criterion?
    b. What is decision according to Minimum Probability of Error criterion, assuming
    $P(H_0) = 2/3$ and $P(H_1) = 1/3$?
    c. What is the decision according to Minimum Risk Criterion, assuming
    $P(H_0) = 2/3$ and $P(H_1) = 1/3$, and $C_{00} = 0$, $C_{10} = 10$, $C_{01} = 20$, $C_{11} = 5$?
    
3. Consider detecting a signal $s_1(t) = 3 \sin(2 \pi f_1 t)$ that can be present (hypothesis $H_1$) or not ($s_0(t)=0$, hypothesis $H_0$).
The signal is affected by AWGN $\mathcal{N}(0, \sigma^2=1)$.
The receiver takes 2 samples.
    a. What are the best sample times $t_1$ and $t_2$ to maximize detection performance?
    b. The receiver takes 2 samples with values $\left\{ 1.1, 4.4 \right\}$, at sample times $t_1 = \frac{0.125}{f_1}$ and $t_2 = \frac{0.625}{f_1}$.
    What is decision according to Maximum Likelihood criterion?
    c. What if we take the decision with Minimum Probability of Error criterion, assuming
    $P(H_0) = 2/3$ and $P(H_1) = 1/3$?
    d. What is the decision according to Minimum Risk Criterion, assuming
    $P(H_0) = 2/3$ and $P(H_1) = 1/3$, and $C_{00} = 0$, $C_{10} = 10$, $C_{01} = 20$, $C_{11} = 5$?
    e. What if the receiver takes an extra third sample at time $t_3 = \frac{0.5}{f_1}$. Will the detection be improved?
    
1. A signal can have two values, $-4$ (hypothesis $H_0$) or $5$ (hypothesis $H_1$). 
The signal is affected by AWGN $\mathcal{N}(0, \sigma^2=1)$.
The receiver takes 3 samples with values $\left\{ 1.1, 4.4, 2.2 \right\}$.
    a. What is decision according to Maximum Likelihood criterion? Use both interpretations.
