---
title: | 
       | Seminar 5
       | Decision with multiple samples
subtitle: DEDP
documentclass: scrartcl
fontsize: 12pt
---

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

	\smallskip

2. A transmitted signal can be one of the following $s_0(t)$ or $s_1(t)$ (depicted below).
The received signal is $r(t)$. 
The signal is affected by AWGN $\mathcal{N}(0, \sigma^2=2)$.
Find the receiverțs decision based on the Maximum Likelihood criterion, in two ways:
    a. based on 3 samples taken at moments $t_1 = 0.5$, $t_2 = 1.5$ and $t_2 = 3.5$
    b. with continuous observation

	\ ![](fig/SIG_Haar1.png){.id width=25%} \      ![](fig/SIG_Haar2.png){.id width=25%} \      ![](fig/SIG_Rec.png){.id width=25%}  

	\smallskip


3. A signal can have two values, $0$ (hypothesis $H_0$) or $6$ (hypothesis $H_1$). 
The signal is affected by AWGN $\mathcal{N}(0, \sigma^2=1)$.
The receiver takes 5 samples with values $\left\{ 1.1, 4.4, 3.7, 4.1, 3.8 \right\}$.
    a. What is decision according to Maximum Likelihood criterion?
    b. What is decision according to Minimum Probability of Error criterion, assuming
    $P(H_0) = 2/3$ and $P(H_1) = 1/3$?
    c. What is the decision according to Minimum Risk Criterion, assuming
    $P(H_0) = 2/3$ and $P(H_1) = 1/3$, and $C_{00} = 0$, $C_{10} = 10$, $C_{01} = 20$, $C_{11} = 5$?
    d. How large should $P(H_0)$ be, in order for the decision according to MPE criterion to be $D_0$?

