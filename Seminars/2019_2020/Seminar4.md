---
title: | 
       | Seminar 4
       | Decision criteria
subtitle: DEDP
documentclass: scrartcl
fontsize: 12pt
---

1. A vehicle airbag system detects a crash by evaluating a sensor which provides two values: $s_0(t) = 0$ (no crash) or $s_1(t) = 5$ (crashing)
The signal is affected by gaussian noise $\mathcal{N}\;(\mu=0, \sigma^2=1)$.
The costs of the scenarios are: $C_{00} = 0$, $C_{01} = 100$, $C_{10} = 10$, $C_{11} = -100$
    a. Find the decision taken based on a sample $r = 3.1$
    a. Find the decision regions $R_0$ and $R_1$.

\smallskip

2. An information source provides two messages with probabilities $p(a_0) = \frac{2}{3}$ and $p(a_1) = \frac{1}{3}$.
The messages are encoded as constant signals with values $-5$ ($a_0$) and $5$ ($a_1$).
The signals are affected by noise with uniform distribution $U [-5,5]$.
The receiver takes one sample $r$.
    a. Find the decision regions according to the Neyman-Pearson criterion, considering $P_{fa} \leq 10^{-2}$
    b. What is the probability of correct detection, in this case?
    
\smallskip
    
3. A signal can have two values, $0$ (hypothesis $H_0$) or $6$ (hypothesis $H_1$). 
The signal is affected by AWGN $\mathcal{N}(0, \sigma^2=1)$.
The receiver takes 5 samples with values $\left\{ 1.1, 4.4, 3.7, 4.1, 3.8 \right\}$.
    a. What is decision according to Maximum Likelihood criterion?
    b. What is decision according to Minimum Probability of Error criterion, assuming
    $P(H_0) = 2/3$ and $P(H_1) = 1/3$?
    c. What is the decision according to Minimum Risk Criterion, assuming
    $P(H_0) = 2/3$ and $P(H_1) = 1/3$, and $C_{00} = 0$, $C_{10} = 10$, $C_{01} = 20$, $C_{11} = 5$?
    d. How large should $P(H_0)$ be, in order for the decision to be $D_0$?
    
\smallskip

4. Consider detecting a signal $s_1(t) = 3 \sin(2 \pi f_1 t)$ that can be present (hypothesis $H_1$) or not ($s_0(t)=0$, hypothesis $H_0$).
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
