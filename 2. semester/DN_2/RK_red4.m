%Runge-Kutta 4. stopnje
function [T, X, Y] = RK_red4(t0, tk, h, z0, Z_odvod)
  dolzina = tk-t0;
  t = t0; %zacetni cas
  z = z0; %z0 je sedaj vektor, z0 je zacetni pribli?ek
  T(1) = t0;
  X(1) = z0(1); %z0(1) so x(t)
  Y(1) = z0(2); %z0(2) so y(t)
  while (t < dolzina - h)
    k1 = h*Z_odvod(t,z);
    k2 = h*Z_odvod(t+h/2,z+k1/2);
    k3 = h*Z_odvod(t+h/2,z+k2/2);
    k4 = h*Z_odvod(t+h,z+k3);
    zn = z + (1/6)*(k1 + 2*k2 + 2*k3 + k4);
    tn = t+h;
    %TU DODAMO IF ZA ?ELJENE IZPISE:
    if (tn < 1+h/10 && tn > 1-h/10)
      disp("Pribli?ki z RK metodo 4. stopnje (cas, x(t), y(t)):")
      cas1 = [tn,zn(1),zn(2)]
    end
    if (tn < 2+h/10 && tn > 2-h/10)
      cas2 = [tn,zn(1),zn(2)]
    end
    if (tn < 3+h/10 && tn > 3-h/10)
      cas3 = [tn,zn(1),zn(2)]
    end
    if (tn < 4+h/10 && tn > 4-h/10)
      cas4 = [tn,zn(1),zn(2)]
    end
    
    T(end + 1) = tn;
    X(end + 1) = zn(1);
    Y(end + 1) = zn(2); 
    t = tn;
    z = zn;
  end
  
end
