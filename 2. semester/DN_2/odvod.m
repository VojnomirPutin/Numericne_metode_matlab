function odvod = odvod(x,y)
odvod = zeros(2,1);
odvod(1) = y(2);
odvod(2) = -(y(1).^2 - 1).*y(2) - y(1);
x = x;
end

