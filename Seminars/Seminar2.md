---
title: Seminar 2
subtitle: DEDP
documentclass: scrartcl
fontsize: 12pt
---


1. Compute the average value, the average squared value, and the variance
for a stationary random process with the distribution of a sample:
    * $w_1(x) = \mathcal{U}[a,b]$ for some $a, b \in \mathbb{R}$
    * $w_1(x) = \frac{1}{2} - \frac{1}{8} x$. For this one, also plot the
    function and check that its integral really is 1
    
2. Compute the temporal average value, the temporal average squared value,
the temporal variance, and the temporal autocorrelation function for 
the following realization of a finite-length random process:
$$v = [-1 2 -1 2 -1 2 -1 2 -1 2]$$


3. Find the autocorrelation function of the output of an ideal low-pass filter
with transfer function
$$H(j \omega) = 
\begin{cases}
A \cdot e^{j \Phi(\omega)}, & |\omega| \leq \omega_c \\
0, & |\omega| > \omega_c
\end{cases}$$
if the input to the filter is white noise with PSD equal to $P$.


4. Let $x[n]$ be a discrete-time random process with triangular autocorrelation function
$$R_xx[\tau] = 
\begin{cases}
1 - \frac{|\tau|}{5}, & \tau = -5, -4, ... 4, 5\\
0, & elsewhere
\end{cases}
$$
$x[n]$ is applied to the system defined by $y[n] = x[n] - x[n-5]$. Find and sketch the autocorrelation function of
the output.


5. Let $N(t)$ be a bandlimited white noise process with PSD equal to
$$S_{NN}(\omega) = 
\begin{cases}
S, & |\omega| \leq B\\
0, & |\omega| > B\\
\end{cases}
$$
    * Find and sketch the autocorrelation function of the process
    * If we sample the process, whet is the sampling rate $F_s$ such that
    the resulting samples are uncorrelated?
