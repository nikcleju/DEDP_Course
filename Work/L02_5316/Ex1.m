load('ElectionsData.mat');

N = size(values,1);

% Method 1
for i=1:N
    turnout(i, 1) = (values(i,3)+values(i,4)+values(i,5)+values(i,6)) / ...
                        (values(i,1)+values(i,2));
end

% Method 2
votes      = values(:,3) + values(:,4) + values(:,5) + values(:,6);
registered = values(:,1) + values(:,2);
turnout2   = votes ./ registered;

plot(turnout)

% 
mean_all = mean(turnout)
var_all  = var(turnout, 1)

sum_all = sum(values);

mean_all_v2 = sum( sum_all(3:6) ) / sum( sum_all(1:2) )