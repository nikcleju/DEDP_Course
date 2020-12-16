clear all
close all

% Exercise 1
% Generate s
n = 0:299;               % 300 time moments
s = 4*sin(2*pi*0.02*n);

% Add noise
r = s + sqrt(2)*randn(1, 300);   % add 300 samples of noise; sigma = sqrt(2)
%plot( [s' r'] )                  % [s' r'] is a matrix with two columns

%=========================================
% Exercise 2
frequencies = linspace(0, 0.5, 100000);

for i=1:length(frequencies)
    
    % Current frequency to try
    fk = frequencies(i);
    
    % Generate the signal
    s_try = 4*sin(2*pi*fk*n);
    
    % Compute distance between r and s_try
    dist(i) = sqrt(  sum(   (   r - s_try   ).^2   )  );
end
%plot(dist)

% Search for minimum distance
[minval, minpos] = min(dist);

f_est = frequencies(minpos);
fprintf('Estimated frequency = %g\n', f_est);
