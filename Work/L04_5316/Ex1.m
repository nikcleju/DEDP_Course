% Exercise 1
close all
 
%load('ECG_train.mat')

plot(train(:,301))
figure
plot(train(:,302))
figure
plot(train(:,303))

load('ECG_test.mat')
plot(test(:,1))

myKNN(test(:,75), 3, train)