function v = Newtonov_polinom(koef,X, a)
%koef... vektor koeficientov
%X... vektor interpolacjskih to�k
%a... vrednost polinoma v to�ki a

v = koef(1);
for i = 2:length(X)
    j = 1;
    b = 1;
    while j < i
        b = (a - X(j))*b;
        j = j+1;
    end
    v = koef(j)*b + v;
end