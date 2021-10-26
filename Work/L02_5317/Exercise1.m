clear all
close all

load('ElectionsData.mat')

% for i=1:255
%     turnout(i) = (values(i,3)+values(i,4)+values(i,5)+values(i,6)) / (values(i,1) + values(i,2));
% end

turnout = sum( values(:, 3:6), 2) ./ sum( values(:, 1:2), 2);
plot(turnout)

mean(turnout)
var(turnout)

[tmax, pozmax] = max(turnout)
names{pozmax}
[tmin, pozmin] = min(turnout)
names{pozmin}