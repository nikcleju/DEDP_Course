clear all
close all

load('ElectionsData.mat');

votes = values(: , 3) + values(: , 4) + values(: , 5) + values(: , 6);
lists = values(: , 1) + values(: , 2);
% OR:
% votes = sum(values(:,3:6), 2)  % sum(A,2) means sum the rows of A
% lists = sum(values(:,1:2), 2)  % sum(A,2) means sum the rows of A

turnout = votes ./ lists;
plot(turnout)

mean(turnout)
var(turnout)

% Extra:
[tmax, tmaxpos] = max(turnout)
names{tmaxpos}  % the name of the voting center who had the highest turnout
[tmin, tminpos] = min(turnout)
names{tminpos}  % the name of the voting center who had the lowest turnout



