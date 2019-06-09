function [priblizek,napaka] = sim_del_dif_df(F, x, dF, h)

priblizek = (F(x+h) - F(x-h))/(2*h);
napaka = abs(dF(x) - priblizek);
end

