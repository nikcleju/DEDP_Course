---
title: Seminar 10
subtitle: DEDP
documentclass: scrartcl
fontsize: 12pt
---

\newcommand*{\underuparrow}[1]{\ensuremath{\underset{\uparrow}{#1}}}
\renewcommand{\vec}[1]{\mathbf{#1}}
\newcommand{\erf}{\operatorname{erf}}



1. Consider detecting a signal $s_1(t) = 3 \sin(2 \pi f_1 t)$ that can be present (hypothesis $H_1$) or not ($s_0(t)=0$, hypothesis $H_0$).
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
    f, What is the minimum value of $P(H_0)$ such that Minimum Risk Criterion results in decision $D_1$?
    
    
\ 

2. Se transmite unul dintre semnale $s_0(t)$ sau $s_1(t)$, iar la recepție se recepționează $r(t)$. 
Semnalele sunt reprezentate mai jos. Știind că semnalele transmise sunt afectate de zgomot alb
cu distribuție Gaussiană $\mathcal{N}(0, \sigma^2=2)$, să se găsească decizia luată de receptor
conform criteriului plauzibilității maxime:
    a. with continous observation
    b. based on 3 samples taken at moments $t_1 = 0.5$, $t_2 = 1.5$ and $t_2 = 3.5$

\ ![](fig/SIG_Haar1.png){.id width=25%} \      ![](fig/SIG_Haar2.png){.id width=25%} \      ![](fig/SIG_Rec.png){.id width=25%}  

