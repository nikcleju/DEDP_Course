clear all
close all

% Ex1
load('ECG_train.mat')
load('ECG_test.mat')

plot(train(:,1))
figure
plot(train(:,2))
figure
plot(train(:,3))

figure
plot(train(:,101:103))

figure
plot(train(:,201:203))

figure
plot(train(:,301:303))

figure
plot(test(:,1))