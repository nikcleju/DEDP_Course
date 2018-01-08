---
title: Seminar 6 - Parameter estimation
subtitle: DEDP
documentclass: scrartcl
fontsize: 12pt
---

1. Fit a linear function $y = ax$ (i.e. estimate $a$) through the following data points
$(x_i, y_i) = {(1,1.8),(2,4.1),(2.5, 5.1),(4,7.9),(4.3, 8.5)}$,
assuming the noise is $\mathcal{N}(0,\sigma^2=1)$
    a. use Maximum Likelihood (ML) estimation
    b. use Maximum A Posteriori (MAP) estimation, with the prior
    distribution $w(a)$ being $\mathcal{N}(1,\sigma^2=0.64)$
    c. use Maximum A Posteriori (MAP) estimation, with the prior
    distribution $w(a)$ being $U[1,4]$

2. A received signal $r(t) = a \cdot t^2 + noise$ is sampled at time moments $t_i = [1,2,3,4,5]$,
 and the values are $r_i = [1.2, 3.7, 8.5, 18, 25.8]$. The noise distribution
 is $\mathcal{N}(0,\sigma^2=1)$. Estimate the parameter $a$.
    a. use Maximum Likelihood (ML) estimation
    b. use Maximum A Posteriori (MAP) estimation, with the prior
    distribution $w(a)$ being $\mathcal{N}(1,\sigma^2=0.64)$
    c. use Maximum A Posteriori (MAP) estimation, with the prior
    distribution $w(a)$ being $U[1,4]$

3. A received constant signal $r(t) = \Theta + noise$ is sampled 3 times,
 and the values are $r_i = [1.2, 2.7, 2.2]$. The noise distribution
 is uniform $U(-1,1)$. Estimate the parameter $\Theta$ using Maximum Likelihood estimation.
