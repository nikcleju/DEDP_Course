---
title: DEDP Sample Exam
documentclass: scrartcl
fontsize: 12pt
---

This is a **sample exam sheet**. The exercises / questions are for illustrative purposes only. 
The exercises shown here are merely the ones from the seminars. In the real exam, they will be changed.


# Exercises

1. (1p) Compute the probability that three r.v. $X$, $Y$ and $Z$ i.i.d. $\mathcal{N}(-1,1)$
are all positive simultaneously (assume *erf()* is known).

2. (2p) Compute the temporal variance of the following realization of a finite-length random process:
$$v = [-1, 2, -1, 2, -1, 2, -1, 2, -1, 2]$$

1. Consider the detection of a signal with two possible levels, 0 (hypothesis $H_0$) or 6 (hypothesis $H_1$). 
The signal is affected by noise with triangular distribution $[-5,5]$.
The receiver takes one sample $r = 3.5$.
    a. (1p) Draw the graphic of the two functions
    a. (3p) Find the decision for the sample $r = 3.5$ considering the Minimum Probability of Error criterion, if $P(H_0) = \frac{3}{4}$ and $P(H_1) = \frac{1}{4}$.
    b. (3p) What is the probability of false alarm, $P(D_1 \cap H_0)$, for the Maximum Likelihood criterion?    
  
1. (3p) A signal can have two values, $-4$ (hypothesis $H_0$) or $5$ (hypothesis $H_1$). 
The signal is affected by AWGN $\mathcal{N}(0, \sigma^2=1)$.
The receiver takes 3 samples with values $\left\{ 1.1, 4.4, 2.2 \right\}$. What is decision according to Maximum Likelihood criterion?
  
2. (5p) A received signal $r(t) = a \cdot t^2 + noise$ is sampled at time moments $t_i = [1,2,3,4,5]$,
 and the values are $r_i = [1.2, 3.7, 8.5, 18, 25.8]$. The noise distribution
 is $\mathcal{N}(0,\sigma^2=1)$. Estimate the parameter $a$ using Maximum Likelihood (ML) estimation.

## Known formulas:

  * $F(x) = \frac{1}{2}\left(1 + erf\left(\frac{x - \mu}{\sigma \sqrt{2}}\right)\right)$

    
# Theory

1. (1p) Let $X$ be a random variable obtained by rolling a die. Plot the cumulative distribution function of $X$.

2. (2p) State the Wiener-Khinchin theorem.




1. (2p) Fill in the blanks: "The minimum probability of error criterion is identical to maximum likelihood criterion when __________ ". Justify.

2. (2p) Color ("hașurați") the conditional probability of **correct rejection** (correct decision of non-detection) in case of hypothesis $H_0$, for the **Maximum Likelihood** criterion, for the two likelihood functions depicted below.
Explain (in words) what you colored.

	![](fig/DET_DecisionRegions.png){#id .class width=80%}
	
3. (3p) Consider detection of a constant signal (values $0$ or $A$) based on a single sample $r$, affected by **Gaussian noise**.
The likelihood ratio is compared to some value $K$, $\frac{w(r|H_1)}{w(r|H_0)} \grtlessH K$.
Find the decision regions $R_0$ și $R_1$ (based on value $K$). 

4. (1p) If the **noise** added to a signal is **doubled**, how does the Signal-to-Noise Ratio (SNR) change (explain in words why):
    a. SNR increases
    b. SNR decreases 
    c. SNR remains the same


1. (5p) Prove that minimizing $I = \int_{-\infty}^\infty C(\epsilon) w(\Theta | \vec{r}) d\Theta$ with a quadratic cost function $C(\epsilon) = \epsilon^2 = (\hat{\Theta} - \Theta)^2$ leads to the formula of the MMSE estimator:
$$\hat{\Theta}_{MMSE} = \int_{-\infty}^\infty \Theta w(\Theta|r) d\Theta$$

2. (1p) The **a posteriori** distribution of an unknown parameter $\Theta$ is a triangular distribution, as depicted below.
	a. What is the value of the MAP estimator? Explain.
	b. What is the value of the MMSE estimator? Explain.

	![](fig/PDF_Trig_mu5.png){#id .class width=40%}
	
3. (2p) Consider an estimation algorithm which always produces an estimate $\hat{\Theta}$ which is larger than the true value $\Theta$. Is this estimator biased or unbiased? Justify.
