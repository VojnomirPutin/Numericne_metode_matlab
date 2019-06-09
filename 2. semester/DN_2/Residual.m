%Impliciten zapis DE po vrsticah.
function Residual = Residual_imp(x, h, ys, yn) %n...novi, s...stari, x-> po potrebi
  Residual = zeros (2, 1);
  Residual(1) = -yn(1) + ys(1) + h*(yn(2)); 
  Residual(2) = -yn(2) + ys(2) + h*(-(yn(1)^2 - 1)*yn(2)-yn(1));%za konkreten primer
end


