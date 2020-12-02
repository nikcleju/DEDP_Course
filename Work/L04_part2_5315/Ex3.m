clear all
close all

load('ECG_train.mat')
load('ECG_test.mat')

% Exercise 3

% Check: add some noise to the test signals
%test = test + 0.1*randn(256, 80);

test = test + 0.01;

k = 7;  % How many nearest neightbors to consider in k-NN

A = zeros(4,4); % Create a confusion matrix 4x4, full of zeros

for i=1:size(test,2)  % size(test,2) is 80
    
    % Run myKNN function for the current test signal
    output_class = myKNN(test(:,i), k, train);
    
    % True class
    true_class = test_labels(i);
    
    % Increment counter
    %    - Classes are 0, 1, 2, 3
    %    - Matlab indices are 1, 2, 3, 4
    A(true_class+1, output_class+1)  =  A(true_class+1, output_class+1) + 1;

end
    
p = (A(1,1) + A(2,2) + A(3,3) + A(4,4)) / size(test,2);
    
    