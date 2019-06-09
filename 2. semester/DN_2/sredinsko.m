function [priblizek ,napaka] = sredinsko(a, b, F)
T = razdeli_interval(a,b,2);
h = T(1,2) - T(1,1);
priblizek =  2h*F(a+h);
napaka = abs(integral(F, a, b) - priblizek);


end
