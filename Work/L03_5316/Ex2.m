Tvalues = linspace(0, 5, 100);

for i=1:100
   [p_cd(i), p_fa(i)] = myThreshDet(Tvalues(i));
end

plot(p_fa, p_cd)