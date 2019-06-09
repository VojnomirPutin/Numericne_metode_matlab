function [priblizek ,napaka] = triosmine(a, b, F)
T = razdeli_interval(a,b,3);
h = T(1,2) - T(1,1);
priblizek = (3/8)*h*((F(a) + 3*F(a+h) + 3*F(a+2*h) + F(b)));
napaka = abs(integral(F, a, b) - priblizek);


end

