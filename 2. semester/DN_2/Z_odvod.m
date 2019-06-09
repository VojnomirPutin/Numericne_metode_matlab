function Z_odvod = Z_odvod(t,Z)
  Z_odvod = zeros(4,1);
  Z_odvod(1) = Z(3); 
  Z_odvod(2) = Z(4);
  Z_odvod(3) = -2*Z(1)*(Z(1)^2 + Z(2)^2)^(-3/2);
  Z_odvod(4) = -2*Z(2)*(Z(1)^2 + Z(2)^2)^(-3/2);
end
