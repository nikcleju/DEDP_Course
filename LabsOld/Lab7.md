---
title: Image Denoising with Estimation Theory
subtitle: Laboratory 6, DEDP
documentclass: scrartcl
fontsize: 12pt
---


# Objective

Implement and use a non-trivial use of estimation theory for image processing:
given a noisy image, estimate the original with Total Variation $\ell_1$ minimization.

# Theoretical aspects

Consider an image that has been affected by noise.
We only have the noisy image $I_z$.

Our job: estimate the true original image $I^*$ from the noisy version. 
How? We know *a priori* that the true image is rather *smooth* (like all images, really).

The denoising problem can be formulated as follows:
$$\hat{I} = \arg\min_I \|I_z - I\| + \lambda \cdot TV(I)$$

Here, $TV(I)$ is "the Total Variation" of I and is defined as:
$$TV(I) = \sum_{i,j} |x[i+1,j] - x[i,j]| + |x[i,j+1] - x[i,j]|$$
	

# Exercises

1. Load the noisy image 'noisy.jpg'. 
Convert to ``double``, bring values to range $[0,1]$, and convert to grayscale.
Display the image.
    
2. Download and install the ``cvx`` Matlab package from [http://cvxr.com/cvx/](http://cvxr.com/cvx/)

3. Make a script which calls the ``cvx`` package as follows:

	```
	...
	lambda = 0.1;
	[height width] = size(Iz);
	cvx_begin
		variable I(height,width)
		minimize( norm( I_z - I, 2 ) + lambda * TV(I) )
		% Replace TV(I) with its actual definition!
	cvx_end
	...
	```
	
	Plot the resulting image $I$. Repeat for various values of $\lambda$ and compare.


# Final questions

1. TBD
