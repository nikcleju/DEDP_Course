A = 5;
v = rand(1,100000) > 0.5;
s = v*A;   % The original sent values

% Add noise, r = the received signal
r = s + randn(1, 100000);
% For sigma^2 = 77, use sqrt(77)*randn(1, 100000)

T = 0.6*A;   % Pick a threshold
d = r > T;   % Decisions

% Count the 4 outcomes

% Correct rejection
ncr = 0;   
for i=1:length(v)
    if (v(i) == 0 && d(i)==0)
        ncr = ncr+1;
    end
end

% False alarm
nfa = 0;
for i=1:length(v)
    if (v(i) == 0 && d(i)==1)
        nfa = nfa+1;
    end
end

% Miss (alternative way of computing)
nm = sum(v == 1 & d == 0);

% Correct detection (alternative way of computing)
ncd = sum(v+d == 2);

% Convert to probabilities
pcr = ncr / length(v);
pfa = nfa / length(v);
pm  = nm  / length(v);
pcd = ncd / length(v);

