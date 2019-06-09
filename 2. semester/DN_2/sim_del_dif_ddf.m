function [priblizek,napaka] = sim_del_dif_ddf(F, x, ddF, h)

priblizek = (F(x+h) - 2*(F(x)) + F(x - h))/h.^2;
napaka = abs(ddF(x) - priblizek);

end

