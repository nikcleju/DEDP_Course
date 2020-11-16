function [p_cd, p_fa] = myThreshDet(T)

A = 5;
v = rand(1,100000) > 0.5;
s = v*A;

r = s + sqrt(7)*randn(1,100000);   % multiply with sigma if you want a certain sigma^2

d = r > T;

% Count correct rejections (v is 0 and d is 0)
count_cr = 0;
for i=1:length(v)
    if ( v(i) == 0 && d(i) == 0 )
        count_cr = count_cr + 1; 
    end
end

% Count false alarms (v is 0 and d is 1)
count_fa = 0;
for i=1:length(v)
    if ( v(i) == 0 && d(i) == 1 )
        count_fa = count_fa + 1; 
    end
end
%count_fa = sum( v-d == -1);

% Count misses (v is 1 and d is 0)
count_m = sum( (v == 1) & (d == 0));

% Count correct detections (v is 1 and d is 1)
count_cd = sum( v+d == 2);

p_cr = count_cr/length(v);
p_fa = count_fa/length(v);
p_m  = count_m/length(v);
p_cd = count_cd/length(v);


