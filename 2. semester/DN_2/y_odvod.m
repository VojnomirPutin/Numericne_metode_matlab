%Tu definiramo pomo?no funkcijo - na roke odvajamo y (y=[y';y'']):
function y_odvod = y_odvod(x,y)
  y_odvod = zeros (2, 1);
  y_odvod(1) = y(2);
  y_odvod(2) = -(y(1)^2 - 1)*y(2) - y(1);
end
