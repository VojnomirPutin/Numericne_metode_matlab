G = @(x) sin(x)./(1+x.^2);

M1 = razdeli_interval(-1, 2, 10);
M2 = razdeli_interval(-1, 2, 20);

i1 = 0;
for i = 1:10
    [priblizek, napaka] = triosmine(M1(i,1), M1(i,2), G);
    i1 = i1 + priblizek;
end

i2 = 0;
for i = 1:20
    [priblizek, napaka] = triosmine(M2(i,1), M2(i,2), G);
    i2 = i2 + priblizek;
end

bolje = (16*i2 - i1)/15;







