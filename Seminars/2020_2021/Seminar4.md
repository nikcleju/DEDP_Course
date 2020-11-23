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
    b. Compute the four conditional probabilities (correct rejection, false alarm, miss, correct detection)

1. A vehicle airbag system detects a crash by evaluating a sensor which provides two values: $s_0(t) = 0$ (no crash) or $s_1(t) = 5$ (crashing)
The signal is affected by gaussian noise $\mathcal{N}\;(\mu=0, \sigma^2=1)$.
The costs of the scenarios are: $C_{00} = 0$, $C_{01} = 100$, $C_{10} = 10$, $C_{11} = -100$.
The probabilities of the two hypotheses are $P(H_0) = 2/3$, $P(H_1) = 1/3$.
    a. Find the decision taken based on a sample $r = 3.1$, with the MPE   criterion
    a. Find the decision taken with the same sample, with the MR criterion
    a. Find the decision regions $R_0$ and $R_1$ in both cases
    c. What if the noise is uniform $U[-3, 3]$?
