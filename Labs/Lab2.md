---
title: Receiver Operating Characteristic for thresholding-based decision
subtitle: Laboratory 2, DEPI
documentclass: scrartcl
fontsize: 12pt
---


# Objective

Simulate a binary constant-signal detection system based on thresholding, and
characterize the system via the Receiver Operating Characteristic.

# Theoretical aspects

Consider a binary message encoded with two constant levels $0$ and $A$, affected by white noise.
A sample of the signal is equal to:
$$r = s + n,$$
where $s$ is the true signal (0 or A), and $n$ is the sample of noise.

The receiver decides what is the true signal by comparing the sample $r$
with a threshold $T$, whose value depends on the specific decision criterion used:

  * Maximum Likelihood
  * Minimum error probability
  * etc.

For one decision, there can be 4 outcomes:

  * correct rejection: signal is 0, detection is 0
  * false alarm: signal is 0, detection is 1
  * miss: signal is 1, detection is 0
  * hit (correct detection): signal is 1, detection is 1

The Receiver Operating Characteristic (ROC) curve is the plot of
P(hit) against  P(false alarm).


# Exercises

1. Simulate threshold-based detection with a single sample, as follows:
    * Generate a vector of 100000 values $0$ or $A$, with equal probability (hint: use `rand()` and compare to 0.5)
    * Add over it a random noise with normal distribution $\mathcal{N}(0, \sigma^2=1)$
    * Compare each element with $T$ to decide which sample is logical 0 or logical 1 (A)
    * Compare the decision result with the true original vector, and count how many
    correct detections and how may false alarms have been.
    * Estimate P(hit) and P(false alarm) by dividing the above numbers to the size of the vector

1. Wrap the above code into a function  `[phit, pfa] =  myThreshDet(T)` that returns
the two probabilities for a given `T`. Draw the ROC by running the function for 100 values of $T$ uniformly
spaced between $0$ and $A$, and plotting the resulting vector `phit` against `pfa` (

2. Repeat the same simulation for two samples per bit:
    * double the values of the starting vector, making two consecutive $0$ or $A$ values, e.g. $$[0 0 A A 0 0 A A A A 0 0 A A ...]$$
    * the decision now uses **the average  value** of the two consecutive samples of a bit
    * plot the ROC and compare with the first one. Which is better?


# Final questions

1. In a practical scenario, what is the disadvantage of using 2 samples for detection, compared to just 1?

