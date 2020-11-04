
Tvalues = linspace(0, 5, 100);

for i=1:100
    [pcd(i), pfa(i)] = myThreshDet(Tvalues(i));
end

plot(pfa, pcd)