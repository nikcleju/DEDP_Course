function p = myPDF(v, x, epsilon)

len = length(v);

count = 0;

% Go through all elements in v:
for i = 1:len
    % Check if element v(i) is in the correct interval:
    if (v(i) >= x-epsilon) && (v(i) <= x+epsilon)
        count = count+1;
    end
end

p = count / len / (2*epsilon);

% p is returned at the end
end