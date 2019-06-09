%Eulerjeva_implicitna_metoda

function [X, Y] = Eulerjeva_implicitna_metoda(x0, xk, h, y0, z0, Residual_imp)
  dolzina = xk-x0;
  x = x0;
  y = [y0; z0];
  X(1) = x0;
  Y(1) = y0;
  while (x < dolzina - h)
  %V na?em primeru re?ujemo tak sistem nelinearnih enacb:
  % yn...neznani vektor, ys...znani vektor:
  % yn = ys + h*y_odvod(x+h,yn) -> to bi bila vektorska enacba
    %"dummy function" - vzame fu. Residual_imp in samo yn obravnava kot spremenljivko
    p = @(yn) Residual_imp(x, h, y, yn);
    %fsolve - Newtonova metoda. yn je vektor re?itev, fval vrednosti, info = 1 nam 
    % pa pove, da je postopek skonvergiral
    [yn, fval, info] = fsolve(p,y);
    xn = x+h;
    X(end + 1) = xn;
    Y(end + 1) = yn(1); 
    x = xn;
    y = yn;
  end
  
end