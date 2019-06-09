function [M] = razdeli_interval(a, b, n)
M = zeros(n, 2);
korak = (b-a)/n;
for i = 1:n
    M(i,1) = a + korak*(i-1);
    M(i,2) = a + korak*(i);
end

