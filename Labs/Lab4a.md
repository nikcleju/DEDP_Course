---
title: Signal Classification with the k-NN Algorithm
subtitle: Laboratory XX, DEDP
documentclass: scrartcl
fontsize: 12pt
---


# Objective

Implement and use the k-NN algorithm for classification of various signals

# Theoretical aspects

Explain the k-NN algorithm

Data sets:

- training set
- test set
- (crossvalidation) set for choosing $k$


# Exercises

1. Load the data file 'face_dataset.mat'. Explore the dataset:
    - display 5 images from the dataset
    - print the image sizes
    
2. Split the dataset as follows:
    - 80% of images of each class as the ``training set``
    - 20% of images of each class as the ``test set``
    - save the datasets as different files ``trainset.mat`` and ``testset.mat``
    
3. Implement a function ``[class] = myKNN(image, k)`` for performing k-NN classification of an image:
    - the function takes as input an image ``image``
    - the function loads the training set from ``trainset.mat``
    - the function computes the Euclidean distance between ``image`` and each image from the training set
    - the output ``class`` is defined by the majority of the $k$ nearest neighbours of the image
    
4. Call the function ``myKNN`` for each image from the dataset and compare the classification results against the ground truth.    
Print the confusion matrix.
    
	
# Final questions

1. TBD
