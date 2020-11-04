v1 = 5 + sqrt(10)*randn(1,1000000);   
% plot(v1);
% figure
% hist(v1);
% 
v2 = -4 + 14*rand(1,1000000);
% figure
% plot(v2)
% figure
% hist(v2)

% Exercise 5
n = linspace(-8, 18, 500);  % 50 values between -8 and 18
epsilon = 0.1;
for i = 1:length(n)
    % Call myPDF with v, n(i), and epsilon
    % Compute PDF value in every point x = n(i)
    z(i) = myPDF(v2, n(i), epsilon);
end
plot(n,z)
    