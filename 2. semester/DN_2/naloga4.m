%4.NALOGA
clear all
%%navodilo prepi?i

opt = odeset ("RelTol", 10e-12, "AbsTol", 10e-12);
odvod = @(t,Z) (Z_odvod(t,Z));
[tode45, Zode45] = ode45 (odvod, [0,4], [0,1,1,-1], opt);

[cas, Xodt, Yodt] = RK_red4(0, 4, 0.01, [0;1;1;-1], @Z_odvod);
plot(Zode45(:,1),Zode45(:,2), "k", Xodt, Yodt, "y");

%IZPIS:
disp("Priblizki z vgrajeno metodo (cas, x(t), y(t)):")
[tode45, Zode45] = ode45 (odvod, [0,1], [0,1,1,-1], opt);
cas1 = [tode45(end), Zode45(end,1), Zode45(end,2)]

[tode45, Zode45] = ode45 (odvod, [0,2], [0,1,1,-1], opt);
cas2 = [tode45(end), Zode45(end,1), Zode45(end,2)]

[tode45, Zode45] = ode45 (odvod, [0,3], [0,1,1,-1], opt);
cas3 = [tode45(end), Zode45(end,1), Zode45(end,2)]

[tode45, Zode45] = ode45 (odvod, [0,4], [0,1,1,-1], opt);
cas4 = [tode45(end), Zode45(end,1), Zode45(end,2)]
