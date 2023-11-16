---
title: | 
       | Seminar 4
       | Decision criteria
subtitle: DEDP
documentclass: scrartcl
fontsize: 12pt
---

1. A vehicle airbag system detects a crash by evaluating a sensor 
which provides two values: $s_0(t) = 0$ (no crash) or $s_1(t) = A$ (crashing), where $A = 5$.

   The signal is affected by gaussian noise $\mathcal{N}\;(\mu=0, \sigma^2=2)$.

   The costs of the scenarios are: $C_{00} = 0$, $C_{01} = 100$, $C_{10} = 10$, $C_{11} = 0$.

   The probabilities of the two hypotheses are $P(H_0) = 2/3$, $P(H_1) = 1/3$.
   
   The receiver takes a single sample $r$.
   
    a. Find the decision regions $R_0$ and $R_1$, for all the criteria below:
       - ML
       - MPE
       - MR
       - Neyman-Pearson with false alarm (conditioned) probability $P_{fa} \leq 0.01$
       - A custom threshold value $T = 3$
    
    b. Find the probability of miss, for all the criteria above
       
    c. Find the decision taken based on a sample $r = 3.1$, with each criterion above

    d. Considering the MR criterion, what is the minimum value of $A$ such that the miss probability (non-conditioned) is at most $P_{m} \leq 10^{-6}$?
        
    d. Repeat the whole exercise, but consider the noise is uniform $U[-3, 3]$.


2. A signal can have two values, $s_0(t) = 0$ (hypothesis $H_0$) or $s_1(t) = 6$ (hypothesis $H_1$). 

   The signal is affected by AWGN $\mathcal{N}(0, \sigma^2=1)$.

   The receiver takes 5 samples with values $\left\{ 1.1, 4.4, 3.7, 4.1, 3.8 \right\}$.
   
    a. What is decision according to Maximum Likelihood criterion?
    b. What is decision according to Minimum Probability of Error criterion, assuming
    $P(H_0) = 2/3$ and $P(H_1) = 1/3$?
    c. What is the decision according to Minimum Risk Criterion, assuming
    $P(H_0) = 2/3$ and $P(H_1) = 1/3$, and $C_{00} = 0$, $C_{10} = 10$, $C_{01} = 20$, $C_{11} = 5$?
    d. What are the values of $P(H_0)$ such that the decision according to MPE criterion to be $D_0$?

	\smallskip
