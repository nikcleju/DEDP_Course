clear all
close all

% Exercise 1
% Generate s
n = 0:299;               % 300 time moments
s = 4*sin(2*pi*0.02*n);

% Add noise
r = s + 10*sqrt(2)*randn(1, 300);   % add 300 samples of noise; sigma = sqrt(2)
%plot( [s' r'] )                  % [s' r'] is a matrix with two columns

%=========================================
% Exercise 2
amplitudes = linspace(-20, 20, 100000);

for i=1:length(amplitudes)
    
    % Current amplitude to try
    Ak = amplitudes(i);
    
    % Generate the signal
    s_try = Ak*sin(2*pi*0.02*n);
    
    % Compute distance between r and s_try
    dist(i) = sqrt(  sum(   (   r - s_try   ).^2   )  );
end
%plot(dist)

% Search for minimum distance
[minval, minpos] = min(dist);

A_est = amplitudes(minpos);
fprintf('Estimated amplitude = %g\n', A_est);
