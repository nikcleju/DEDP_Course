---
title: | 
       | Seminar 4
       | Decision criteria
subtitle: DEDP
documentclass: scrartcl
fontsize: 12pt
---

1. A signal can have four possible values: -6, -2, 2, 6. Each value
lasts for 1 second. The signal is affected
by white noise with normal distribution. The receiver takes 1 sample per second.
Using ML criterion, decide what signal has been transmitted, if the received samples are:
$$4, 6.6, -5.2, 1.1, 0.3, -1.5, 7, -7, 4.4$$

2. A signal can have two possible values, $s_0 = -3$ or $s_1 = 3$. The signal is affected
by gaussian noise with distribution $\mathcal{N}(0, 1)$. The receiver performs ML decision based on a single sample $r$.
    a. In hypothesis $H_0$, which for what values of $r$ do we get a false alarm?
    b. Compute the four conditional probabilities (correct rejection, false alarm, miss, correct detection) and their non-conditional values as well

1. A vehicle airbag system detects a crash by evaluating a sensor which provides two values: $s_0(t) = 0$ (no crash) or $s_1(t) = 5$ (crashing)
The signal is affected by gaussian noise $\mathcal{N}\;(\mu=0, \sigma^2=1)$.
The costs of the scenarios are: $C_{00} = 0$, $C_{01} = 100$, $C_{10} = 10$, $C_{11} = -100$.
The probabilities of the two hypotheses are $P(H_0) = 2/3$, $P(H_1) = 1/3$.
    a. Find the decision taken based on a sample $r = 3.1$
    a. Find the decision regions $R_0$ and $R_1$.
    c. What if the noise is uniform $U[-3, 3]$?

1. Consider detecting a signal $s_1(t) = 3 \sin(2 \pi f_1 t)$ that can be present (hypothesis $H_1$) or not ($s_0(t)=0$, hypothesis $H_0$).
The signal is affected by AWGN $\mathcal{N}(0, \sigma^2=1)$.
The receiver takes 2 samples.
    a. What are the best sample times $t_1$ and $t_2$ to maximize detection performance (depending on $f_1$)?
    b. The receiver takes 2 samples with values $\left\{ 1.1, 4.4 \right\}$, at sample times $t_1 = \frac{0.125}{f_1}$ and $t_2 = \frac{0.625}{f_1}$.
    What is decision according to Maximum Likelihood criterion?
    c. What if we take the decision with Minimum Probability of Error criterion, assuming
    $P(H_0) = 2/3$ and $P(H_1) = 1/3$?
    d. What is the decision according to Minimum Risk Criterion, assuming
    $P(H_0) = 2/3$ and $P(H_1) = 1/3$, and $C_{00} = 0$, $C_{10} = 10$, $C_{01} = 20$, $C_{11} = 5$?
    e. What if the receiver takes an extra third sample at time $t_3 = \frac{0.5}{f_1}$. Will the detection be improved?
