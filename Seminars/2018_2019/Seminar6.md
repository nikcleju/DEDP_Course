---
title: Seminar 6 - ML / MPE criteria
subtitle: DEDP
documentclass: scrartcl
fontsize: 12pt
---

1. Consider detection between two signals:
$s_0(t) = -2, \forall t$ and $s_1(t) = 3\sin (2 \pi \frac{1}{4} t)$
The signal is affected by gaussian noise $\mathcal{N}(\mu=0, \sigma^2=2)$.
The receiver takes a single sample at time $t_0 = 1$,
 and it has the value $r(t_0) = 2.4$.
The probabilities of the two hypotheses are $P(H_0) = \frac{1}{4}$ 
and $P(H_1) = \frac{3}{4}$.
    a. Sketch the two conditional distributions
    b. What decision is taken according to ML criterion and to the MPE criterion?
    c. Find the decision regions for both criteria
    c. Compute the probabilities of correct rejection, false alarm, 
    miss and correct detection for ML and MPE criteria
    d. Re-compute the probabilities in case the sampling time
    changes to $t_0 = 1.1$
    e. What are the possible values of $P(H_0)$ that
    make the false alarm probability smaller than $1\%$, for each criterion?
    f. **Difficult, not done fully.** If we could change the value of $s_0(t) = A$, 
    what is the maximum value of A such that 
    the probability of false alarm is smaller than $0.1\%$?

\ 
**Not done:**

2. Consider the decision between two constant signals: $s_0(t) = -5$ and $s_1(t) = 5$.
The signals are affected by gaussian noise $\mathcal{N}(0, \sigma^2=3)$
The receiver takes one sample $r$.
    a. Find the decision regions $R_0$ and $R_1$ according to the MPE criterion
    c. What are the probabilities of false alarm and of miss?
    b. Repeat a) and b) considering that $s_1(t)$ is affected by uniform noise $\mathcal{U}[-4,4]$
 
