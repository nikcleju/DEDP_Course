---
title: | 
       | Seminar 7
       | ML, MAP and MMSE estimation
subtitle: DEDP
documentclass: scrartcl
fontsize: 12pt

header-includes: \usepackage{bm}
---

\newcommand*{\underuparrow}[1]{\ensuremath{\underset{\uparrow}{#1}}}
\renewcommand{\vec}[1]{\mathbf{#1}}
\newcommand{\erf}{\operatorname{erf}}


1. We want to estimate a robot's true position $\Theta$ along a linear road.

    We have one imprecise position sensor (e.g. GPS-like) which provides values affected by Gaussian noise $\mathcal{N}(0, \sigma^2=2)$.

    We take one position reading from the sensor, and we obtain a position value $r_1 = 40$ meters.
   
    From previous measurements, we know that the robot is located somewhere around position $35$ meters, 
    the position having a Gaussian distribution $\mathcal{N}(35, \sigma^2 = 2)$ (prior distribution).

   a. Estimate the true position using ML estimation
   b. Estimate the true position using MAP estimation
   c. Estimate the true position using MMSE estimators


2. Repeat Exercise 1, but instead of taking one position reading from the sensor, 
assume we take three separate readings, yielding positions $r_1 = 40$, $r_2 = 38.1$ and $r_3 = 39.2$

    a. Estimate again the true position using ML, MAP, MMSE estimation
    b. Does the prior distribution have a stronger or a weaker influence now?

\ 


Another example, identical to exercise 1, but with different text and values:

1. We want to estimate today's temperature accurately.

   We have one thermometer which provides imprecise values, affected by Gaussian noise $\mathcal{N}(0, \sigma^2=2)$ (lousy thermometer).
   
   We take one thermometer reading, with the value $r_1 = 0$ degrees.
   
   From historical data, we know that this time of the year the temperature is around $-5$ degrees, 
   being distributed with Gaussian distribution $\mathcal{N}(-5, \sigma^2 = 2)$.

   a. Estimate the true temperature using ML estimation
   b. Estimate the true temperature using MAP estimation
   c. Estimate the true temperature using MMSE estimators
