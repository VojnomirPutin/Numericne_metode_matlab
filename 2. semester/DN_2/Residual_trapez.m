%Razpis DE po komponentah za trapezno pravilo:
% yn = yn + h/2 * (f(xs,ys)+f(xn,yn))
function Residual = Residual_trapez(x, h, ys, yn) %n...novi, s...stari, x-> po potrebi
  Residual = zeros (2, 1);
  Residual(1) = -yn(1) + ys(1) + (h/2)*(ys(2)+yn(2)); 
  Residual(2) = -yn(2) + ys(2) + (h/2)*(-(ys(1)^2 - 1)*ys(2)-ys(1)-(yn(1)^2 - 1)*yn(2)-yn(1));
end