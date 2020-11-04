clear all
close all

% Load file
load('ElectionsData.mat');

% Compute turnout percent for each voting center
% Variant 1
a = sum(values);
for i=1:255
    turnout(i) = (values(i,3)+values(i,4)+values(i,5)+values(i,6)) / (values(i,1) + values(i,2)) ;
end

% Variant 2
nrvotes    = sum( values(:,3:6) ,2);
nrelectors = sum( values(:,1:2) ,2);
turnout2   = nrvotes ./ nrelectors;   % ./ means divide element-by-element 

% Compute mean turnout
mean_turnout = mean(turnout);
var_turnout  = var(turnout, 1);

% Compute mean turnout - in a different way
mean_turnout_method2 = sum(nrvotes) / sum(nrelectors)

plot(turnout2)
