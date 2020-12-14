clear all
close all

% Exercise 1
f = 0.02;
A = 4;
n = 0:599;  % [0, 1, 2, 3, ... 299]
s = A*sin(2*pi*f*n);

r = s + sqrt(2)*randn(1,length(n));  % sqrt(2) = sigma = sqrt(desired variance)

%plot( [s' r'] )
plot( [r'] )


% Exercise 2
f_to_test = linspace(0, 0.5, 100000);

for i=1:length(f_to_test)
    fk = f_to_test(i);                 % current frequency to check
    sk = A*sin(2*pi*fk*n);             % generate clean signal
    d(i) = sqrt(sum( (r - sk).^2 ));      % distance between vector r and vector sk
end

[minval, minpos] = min(d);             % find value and position of minimum
f_estimatedML = f_to_test(minpos);     % ML estimate of frequency

fprintf('Estimated frequency = %g\n', f_estimatedML);

s_est = A * sin(2*pi*f_estimatedML*n);
plot( [s' r' s_est'] )


    