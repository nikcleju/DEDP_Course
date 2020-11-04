clear all
close all

load('Pattern1D.mat');
plot(sig);
figure
plot(patt);

rxy = xcorr(sig, patt);
figure
plot(rxy)