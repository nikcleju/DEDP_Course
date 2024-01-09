---
title: ML and Bayesian estimation, multiple unknowns
subtitle: Seminar 7, DEDP

format:
  html:
    html-math-method: katex
  pdf: default
#   pdf:
#     include-in-header:
#       text: \providecommand{\grtlessH}{\underset{{H_0}}{\overset{H_{1}}{\gtrless}}}

  ipynb: default

toc: true
number-depth: 2
number-sections: true

jupyter: python3
execute:
  freeze: true
  eval: false

---

```{=tex}
\newcommand*{\underuparrow}[1]{\ensuremath{\underset{\uparrow}{#1}}}
\renewcommand{\vec}[1]{\mathbf{#1}}
\newcommand{\erf}{\operatorname{erf}}
```

# Exercise 1

1.  A robot travels a linear road with a constant but unknown speed $v$ cm/s, starting from position $x_0 = 0$ at time 0.

    Every second the robot measures its position using an imprecise sensor, which provides values affected by Gaussian noise $\mathcal{N}(0, \sigma^2=0.1)$.

    The measured values at time moments $t_i = [1,2,3,4,5]$ are $r_i = [4.9, 9.8, 14.3, 21.2, 25.7]$.

    a.  Estimate the speed $v$ using ML estimation.

        *Hint*: If the speed is constant, the travelled distance is $x = v \cdot t$.

    b.  Predict the robot position at time $6$.

    c.  Assuming the starting position $x_0$ is unknown, $x_0 \neq 0$, estimate the pair of parameters \[v, $x_0$\] using ML estimation. Predict the robot's position at time $6$.

    d.  Assuming the movement law is $x(t) = a \cdot t^2 + v_0 \cdot t + x_0$, write the equation system for finding the unknown parameters \[a, $v_0$, $x_0$\]. (constant acceleration $a$, initial speed $v_0$, initial position $x_0$).

## Solution

a). Estimate the speed $v$ using ML estimation.

ML estimation, Gaussion noise? Yes.

The movement law is $x(t) = v \cdot t$. Our unknown is $v$.

The values which we have are:

$$
{\mathbf r} = [4.9, 9.8, 14.3, 21.2, 25.7]
$$

The values which we should have observed are:

$$
{\mathbf s_\Theta} = [v, 2v, 3v, 4v, 5v]
$$

The (squared) Euclidean distance between the two vectors is:

$$
d({\mathbf r}, {\mathbf s_\Theta})^2 = \sum_{i=1}^5 (r_i - s_{\Theta_i})^2 = (v-4.9)^2 + (2v-9.8)^2 + (3v-14.3)^2 + (4v-21.2)^2 + (5v-25.7)^2
$$

We find the minimum of this function by taking the derivative with respect to $v$ and setting it to zero:

$$
\frac{\partial d({\mathbf r}, {\mathbf s_\Theta})^2}{\partial v} = 2(v-4.9) + 2(2v-9.8)2 + 2(3v-14.3)3 + 2(4v-21.2)4 + 2(5v-25.7)5 = 0
$$

We simplify the equation and find the value of $v$:

$$
\hat{v}_{ML} = \frac{4.9 + 9.8*2 + 14.3*3 + 21.2 * 4 + 25.7*5}{1 + 4+ 9 + 16 + 25} = \frac{280.7}{55} = 5.1036
$$

b). Predict the robot position at time $6$.

If we think our speed is constant and equal to $\hat{v}_{ML}$, then the predicted position at time $6$ is:

$$
\hat{x}_{6} = \hat{v}_{ML} \cdot 6 = 5.1036 \cdot 6 = 30.6216
$$

c). Assuming the starting position $x_0$ is unknown, $x_0 \neq 0$, estimate the pair of parameters \[v, $x_0$\] using ML estimation. Predict the robot's position at time $6$.

The movement law is:

$$
x(t) = v \cdot t + x_0
$$ and we have the two unknowns $v$ and $x_0$.

The values which we have are:

$$
{\mathbf r} = [4.9, 9.8, 14.3, 21.2, 25.7]
$$

The values which we should have observed are:

$$
{\mathbf s_\Theta} = [v + x_0, 2v + x_0, 3v + x_0, 4v + x_0, 5v + x_0]
$$

The (squared) Euclidean distance between the two vectors is:

$$
d({\mathbf r}, {\mathbf s_\Theta})^2 = \sum_{i=1}^5 (r_i - s_{\Theta_i})^2 = (v + x_0 - 4.9)^2 + (2v + x_0 - 9.8)^2 + (3v + x_0 - 14.3)^2 + (4v + x_0 - 21.2)^2 + (5v + x_0 - 25.7)^2
$$

We need to find both unknowns, so we take the partial derivatives with respect to both $v$ and $x_0$ and set them both to zero:

$$
\frac{\partial d({\mathbf r}, {\mathbf s_\Theta})^2}{\partial v} = 2(v + x_0 - 4.9) + 2(2v + x_0 - 9.8)2 + 2(3v + x_0 - 14.3)3 + 2(4v + x_0 - 21.2)4 + 2(5v + x_0 - 25.7)5 = 0
$$

$$
\frac{\partial d({\mathbf r}, {\mathbf s_\Theta})^2}{\partial x_0} = 2(v + x_0 - 4.9) + 2(2v + x_0 - 9.8) + 2(3v + x_0 - 14.3) + 2(4v + x_0 - 21.2) + 2(5v + x_0 - 25.7) = 0
$$

We have two equations with two unknowns, so we can solve them. We simplify the equations:

$$
\begin{cases}
55v + 15x_0 = 280.7 \\
15v + 5x_0 = 75.9
\end{cases}
$$

We have:

$$
\hat{v}_{ML} = 5.3
$$

$$
\hat{x}_{0, ML} = -0.72
$$

The estimated position at time $6$ is now:

$$
\hat{x}_{6} = \hat{v}_{ML} \cdot 6 + \hat{x}_{0, ML} = 5.3 \cdot 6 - 0.72 = 31.08
$$

# Exercise 2

2.  A robot travels a linear road with a constant speed $V = 10$ cm/s.

    The robot measures its position every second with with a sensor affected by gaussian noise $\mathcal{N}(0,\sigma^2=0.5)$.

    At time $t_0 = 0$, the robot's position is around $x_{0} = 20$, being a random variable with the distribution:

    $$
    w(x_{0}) = \mathcal{N}(\mu = 20, \sigma = 0.5)
    $$

    a.  Find the distribution $w(x_1)$ of the robot's position at time $t_1 = 1$.

    b.  Suppose at this time $t_1 = 1$ we have a new measurement of the position, with value $r = 29.5$.

        Take this into account with Bayesian estimation and find the new position using MAP and MMSE estimators, considering the predicted distribution in a) as the prior distribution.

    c.  What happens if the speed is not known precisely. Suppose $V$ is a random variable $\mathcal{N}(\mu = 10 \textrm{ cm/s}, \sigma^2 = 0.3)$?

## Solution

a). Find the distribution $w(x_1)$ of the robot's position at time $t_1 = 1$.

If the position at time $t_0$ is $x_0$, then the position at time $t_1$ is:

$$
x_1 = x_0 + V \cdot (t_1 - t_0) = x_0 + V \cdot 1 = x_0 + V
$$
which means it is around 30 cm. More precisely, it is a random variable with the distribution:

$$
w(x_1) = \mathcal{N}(\mu = 30, \sigma^2 = 0.5)
$$

b). Suppose at this time $t_1 = 1$ we have a new measurement of the position, with value $r = 29.5$.

We have two conflicting things here at time $t_1 = 1$.

We have a measurement around 29.5 cm, which is a random variable with the distribution:

$$
w(r|x_1) = \mathcal{N}(\mu = 29.5, \sigma^2 = 0.5)
$$

We also have a ditribution depending on the initial position and the speed (the distribution computed at a) ), known as the **prior distribution**, and according to this we should be around position 30 cm, with the distribution:

$$
w(x_1) = \mathcal{N}(\mu = 30, \sigma^2 = 0.5)
$$

Bayesian estimation is telling us to combine these two distributions into a new distribution, via multiplication, which is the **posterior distribution**:

$$
w(x_1|r) = \frac{w(r|x_1) \cdot w(x_1)}{w(r)}
$$

This means we multiply the two Gaussians, $w(r|x_1)$ and $w(x_1)$, and we get a new Gaussian, $w(x_1|r)$.

The MAP estimator is the maximum of this new distribution, and the MMSE estimator is the mean of this new distribution.

So, what we have to do for MAP estimation is to multiply the two gaussians and locate the peak of the result.

Multiplying two gaussians having the same variance produces a new gaussian with a variance divided by $2$, and the mean being the average of the two means. In our case, the new gaussian is:

$$
w(x_1|r) = \mathcal{N}(\mu = 29.75, \sigma^2 = 0.25)
$$

The MAP estimator says to take the value corresponding to the peak of this distribution, which is $29.75$ cm.

$$
\hat{x}_{1, MAP} = 29.75
$$

The MMSE estimator says to take the average value of this distribution, which is also $29.75$ cm.

$$
\hat{x}_{1, MMSE} = 29.75
$$

