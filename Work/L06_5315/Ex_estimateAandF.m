clear all
close all

% Exercise 1
% Generate s
n = 0:299;               % 300 time moments
s = 4*sin(2*pi*0.02*n);

% Add noise
r = s + sqrt(2)*randn(1, 300);   % add 300 samples of noise; sigma = sqrt(2)
%plot( [s' r'] )                  % [s' r'] is a matrix with two columns

% Exercise 2
% r = starting point
amplitudes = linspace(-20, 20, 1000);
frequencies = linspace(0, 0.5, 1000);

for i=1:length(amplitudes)
    for j=1:length(frequencies)

        % Current amplitude to try
        Ak = amplitudes(i);

        % Current frequency to try
        fk = frequencies(j);

        % Generate the signal
        s_try = Ak *sin(2*pi*fk*n);

        % Compute distance between r and s_try
        dist(i,j) = sqrt(  sum(   (   r - s_try   ).^2   )  );
    end
end
%plot(dist)

% Search for minimum distance inside a matrix
[mincol, minposcol] = min(dist);
[minval, jmin] = min(mincol);
imin = minposcol(jmin);

% Read estimated values
A_est = amplitudes(imin);
f_est = frequencies(jmin);
fprintf('Estimated amplitude = %g and frequency = %g\n', A_est, f_est);