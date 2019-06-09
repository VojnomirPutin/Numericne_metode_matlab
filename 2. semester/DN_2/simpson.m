function [priblizek ,napaka] = simpson(a, b, F)
T = razdeli_interval(a,b,2);
h = T(1,2) - T(1,1);
priblizek = (1/3)*h*((F(a) + 4*F(a+h) + F(b) ));
napaka = abs(integral(F, a, b) - priblizek);


end
