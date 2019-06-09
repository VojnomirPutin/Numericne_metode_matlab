%trapezno pravilo

function [X, Y] = trapezno_pravilo(x0, xk, h, y0, z0, Residual_trapez, y_odvod)
  dolzina = xk-x0;
  x = x0;
  y = [y0; z0];
  X(1) = x0;
  Y(1) = y0;
  while (x < dolzina - h)
  %V na?em primeru re?ujemo tak sistem nelinearnih enacb:
  % yn...neznani vektor, ys...znani vektor:
    %"dummy function" - vzame fu. Residual in samo yn obravnava kot spremenljivko
    p = @(yn) Residual_trapez(x, h, y, yn);
    %Pripravimo pribli?ek re?itve(t.j. prediktor) z ekspl. Eulerjevo metodo.
    %Premaknemo se za pol koraka - h/2.
    yzp = y + (h/2)*y_odvod(x,y); %yzp..zacetni pribli?ek za y
    %fsolve - Newtonova metoda. yn je vektor re?itev, fval vrednosti, info = 1 nam 
    % pa pove, da je postopek skonvergiral
    [yn, fval, info] = fsolve(p,yzp);
    xn = x+h;
    %IZPIS
    if ((xn > 1 - h/100 && xn < 1 + h/100) | ...
      (xn > 2 - h/100 && xn < 2 + h/100) | ...
      (xn > 3 - h/100 && xn < 3 + h/100) | ...
      (xn > 4 - h/100 && xn < 4 + h/100) | ...
      (xn > 5 - h/100 && xn < 5 + h/100))
      disp([xn, yn(1)])
    end
    X(end + 1) = xn;
    Y(end + 1) = yn(1); 
    x = xn;
    y = yn;
  end
  
end