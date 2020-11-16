function [class] = myKNN(signal, k, trainset)

% Get number of signals in the training set
Nsignals = size(trainset,2);  % 400

% Compute distances to all vectors from the training set
for i=1:Nsignals
    % distance between signal, trainset(:,i)
    dif = signal - trainset(:,i);
    dist(i) = sqrt(sum( dif.^2 ));
end

% Sort distances
[dist_sorted, pos] = sort(dist);

% Get nearest neighbors
neighbors = pos(1:k);

% Count how many neighbors are in each of the 4 classes
count = [0 0 0 0];
for i=1:length(neighbors)
    if(neighbors(i) <= 100)
        count(1) = count(1) + 1;
    else if (neighbors(i) > 100 && neighbors(i) <= 200)
            count(2) = count(2) + 1;
        else
            if (neighbors(i) > 200 && neighbors(i) <= 300)
                count(3) = count(3) + 1;
            else
                count(4) = count(4) + 1;
            end
        end
    end
end

% Alternative calculations
% count(1) = sum(neighbors <= 100);
% count(2) = sum( neighbors > 100 & neighbors <= 200);
% count(3) = sum( neighbors > 200 & neighbors <= 300);
% count(3) = sum( neighbors > 300 & neighbors <= 400);

% See which class is maximum
[maxval, maxpos] = max(count);

% Return final class
class = maxpos - 1;  % Final classes are 0, 1, 2 or 3