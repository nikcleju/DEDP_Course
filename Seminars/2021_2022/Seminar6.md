---
title: | 
       | Seminar 6
       | ML estimation
subtitle: DEDP
documentclass: scrartcl
fontsize: 12pt

header-includes: \usepackage{bm}
---

\newcommand*{\underuparrow}[1]{\ensuremath{\underset{\uparrow}{#1}}}
\renewcommand{\vec}[1]{\mathbf{#1}}
\newcommand{\erf}{\operatorname{erf}}


1. We receive constant signal with unknown amplitude A, $r(t) = \underbrace{A}_{s_\Theta(t)} + noise$, 
where the noise is gaussian with $\mathcal{N}(\mu = 0, \sigma^2 = 2)$. 
The signal is sampled at moments $t_i = [0,1.5,3,4]$ and the samples are $r_i = [4.6, 5.2, 5.35, 4.8]$.

    a. Estimate A using Maximum Likelihood (ML) estimation
    b. Repeat a) if the noise is uniform $U[-2, 2]$. Is it possible to find a precise value?

2. A received signal $r(t) = a \cdot t^2 + noise$ is sampled at time moments $t_i = [1,2,3,4,5]$,
 and the values are $r_i = [1.2, 3.7, 8.5, 18, 25.8]$. The noise distribution
 is $\mathcal{N}(0,\sigma^2=1)$. Estimate the parameter $a$.
    a. use Maximum Likelihood (ML) estimation
	
3. Fit a linear function $y = ax$ (i.e. estimate $a$) through the following data points
$(x_i, y_i) = {(1,1.8),(2,4.1),(2.5, 5.1),(4,7.9),(4.3, 8.5)}$,
assuming the noise is $\mathcal{N}(0,\sigma^2=1)$
    a. use Maximum Likelihood (ML) estimation


1. A robot travels a linear road with a constant but unknown speed $v$ cm/s, starting from position $x_0$ at time 0.

	Every second the robot measures its position using an imprecise sensor, which provides values affected by Gaussian noise $\mathcal{N}(0, \sigma^2=0.1)$.

    The measured values at time moments $t_i = [1,2,3,4,5]$ are $r_i = [4.9, 9.8, 14.3, 21.2, 25.7]$.
   
    a. Estimate the speed $v$ using ML estimation.
	   
	   *Hint*: If the speed is constant, the travelled distance is $x = v \cdot t$.
	
	b. Predict the robot position at time $6$.
	c. Assuming the starting position $x_0$ is unknown, $x_0 \neq 0$, estimate the pair of parameters [v, $x_0$] using ML estimation. Predict the robot's position at time $6$.
	d. Assuming the movement law is $x(t) = a \cdot t^2 + v_0 \cdot t + x_0$, write the equation system for finding the unknown parameters [a, $v_0$, $x_0$]. 
	   (constant acceleration $a$, initial speed $v_0$, initial position $x_0$).

    \smallskip
    
2. Repeat point a) for the previous exercise, assuming we have some prior knowledge if the speed, as a prior distribution $w(v) = \mathcal{N}(\mu=4.5, \sigma^2=1)$.