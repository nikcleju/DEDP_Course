function class = myKNN(signal, k, trainset)

% Compute 400 distances
for i=1:400
    % Distance between `signal` and `trainset(:,i)`
    dist(i) = sqrt(  sum(   (   signal - trainset(:,i)   ).^2   )  );
    % Alternative:
    %dif = signal - trainset(:,i);
    %dif2 = dif.^2;
    %s = sum(dif2);
    %dist(i) = sqrt(s);
end

% Sort in increasing order
[dist_sorted, idx] = sort(dist);
%nn = dist_sorted(1:k);

% Keep first k neighbors
nn = idx(1:k);

% Four counters
c1 = 0;
c2 = 0;
c3 = 0;
c4 = 0;

for i=1:k
    if nn(i) <= 100
        c1 = c1 + 1;
    else
        if nn(i) > 100 && nn(i) <=200
            c2 = c2 + 1;
        else
            if nn(i) > 200 && nn(i) <=300
                c3 = c3 + 1;
            else
                c4 = c4 + 1;
            end
        end
    end
end

c = [c1 c2 c3 c4];

% Compute max value and its position
[maxval, maxpos] = max(c);

% maxpos = 1 or 2 or 3 or 4
% class = 0 or 1 or 2 or 3
class = maxpos-1;

