v1 = 2 + sqrt(2)*randn(1, 10^4);
plot(v1)

v2 = -4 + 14*rand(1,10^4);
figure
plot(v2)

hist(v1)
hist(v2, 30)