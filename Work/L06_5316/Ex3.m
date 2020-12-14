clear all
close all

% Exercise 1
f = 0.02;
A = 4;
n = 0:9999;  % [0, 1, 2, 3, ... 299]
s = A*sin(2*pi*f*n);

r = s + sqrt(2)*randn(1,length(n));  % sqrt(2) = sigma = sqrt(desired variance)

%plot( [s' r'] )
plot( [r'] )


% Exercise 2
% assume we know f=0.02, estimate A
A_to_test = linspace(-100, 100, 100000);

for i=1:length(A_to_test)
    Ak = A_to_test(i);                 % current amplitude to check
    sk = Ak*sin(2*pi*f*n);             % generate clean signal
    d(i) = sqrt(sum( (r - sk).^2 ));   % distance between vector r and vector sk
end

[minval, minpos] = min(d);             % find value and position of minimum
A_estimatedML = A_to_test(minpos);     % ML estimate of amplitude

fprintf('Estimated amplitude = %g\n', A_estimatedML);

s_est = A_estimatedML * sin(2*pi*f*n);
plot( [s' r' s_est'] )


    