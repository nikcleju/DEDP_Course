clear all
close all

load('Pattern1D.mat')
plot(sig)
figure()
plot(patt)

r = xcorr(sig, patt);
figure()
plot(r)

[vmax, pozmax] = max(r);
start = pozmax - length(sig);