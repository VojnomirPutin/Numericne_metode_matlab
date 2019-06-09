%Eksplicitna Eulerjeva metoda

function [X, Y, Z] = Eulerjeva_eksplicitna_metoda(x0, xk, h, y0, z0, y_odvod)
  dolzina = xk-x0;
  x = x0;
  y = [y0; z0];
  X(1) = x0;
  Y(1) = y0;
  while (x < dolzina - h)
  %Sem napi?emo nove enacbe
    yn = y + h*y_odvod(x,y);
    xn = x+h;
    X(end + 1) = xn;
    Y(end + 1) = yn(1);
    %X je seznam na?ih delilnih tock, Y je funkcijska vrednost v teh tockah,
    % Z pa je vrednost odvoda v teh tockah.
    %Z(end + 1) = yn(2); -> po potrebi
    Z = yn(2);
    x = xn;
    y = yn;
  end
  
end
