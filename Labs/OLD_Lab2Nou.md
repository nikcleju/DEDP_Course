---
title: Applications of correlation and autocorrelation
subtitle: Laboratory 2, DEPI
documentclass: scrartcl
fontsize: 12pt
---


# Objective

Students should become familiar with using correlation and autocorrelation of signals

# Theoretical aspects

# Exercises

1. Generate the following signals and compute their autocorrelation with `xcorr()`:
    a. $x[n] = sin(2 \pi f n)$, with $f=0.01$, and 1000 samples
	b. a sequence of random noise with gaussian distribution (`randn()`)
	c. a sequence of random noise with uniform distribution symmetrical around 0 (`rand()`)
	
	What is the interpretation of the autocorrelation function for each case?
	
	

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

