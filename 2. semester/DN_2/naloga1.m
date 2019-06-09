F = @(x) exp(x);
dF  = @(x) exp(x);
ddF = @(x) exp(x);

hji = zeros(1,8);
for i = 1:8
    hji(1,i) = 10^(-i-1);
end


a = 0;

priblizekl1 = zeros(1,8);
napaka1 = zeros(1,8);
for i = 1:8
    [priblizekl, napaka] = sim_del_dif_df(F, a, dF, hji(1,i));
    priblizekl1(1,i) = priblizekl;
    napaka1(1,i) = napaka;
    
end


priblizekl2 = zeros(1,8);
napaka2 = zeros(1,8);
for i = 1:8
    [priblizekl, napaka] = sim_del_dif_df(F, a, ddF, hji(1,i));
    priblizekl2(1,i) = priblizekl;
    napaka2(1,i) = napaka;
    
end

[min1, ix1] = min(napaka1);
ix1 = ix1 + 1;
[min2, ix2] = min(napaka2);
ix2 = ix2 + 1;
