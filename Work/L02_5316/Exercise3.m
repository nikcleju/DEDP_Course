clear all
close all

load('Pattern1D.mat');
plot(sig)
figure()    % Create a new figure window
plot(patt)

rxy = xcorr(sig, patt);
stem(rxy);