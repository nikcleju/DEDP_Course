clear all
close all

load('Pattern1D.mat')

plot(patt)
figure
plot(sig)

rxy = xcorr(sig, patt);
figure
plot(rxy)