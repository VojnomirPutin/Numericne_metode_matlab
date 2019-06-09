%3. NALOGA
%y'' + (y^2-1)y' + y = 0, y(0) = 0, y'(0) = 1

%PREVEDBA NA SISTEM DE 1.REDA
%y' = z
%z' = -(y^2-1)*z - y

%y(x=0) = 0 in z(x=0) = 1
clear all

%A) naloga___________________________________________________________________

%Funkcije, ki jih klicemo v funkciji, moramo definirati v posebnem scriptu.
%Ko drugo funkcijo definiramo, je podfunkcija brez znaka @, ko pa jo klicemo, 
% dodamo ?e @.
[XEe,YEe] = Eulerjeva_eksplicitna_metoda(0, 5, 0.01, 0, 1, @y_odvod);
%plot(XEe, YEe);

%Metoda Runge-Kutta z vgrajeno metodo:
%najprej definiramo toleranco:
opt = odeset ("RelTol", 10e-12, "AbsTol", 10e-12);
odvod = @(x,y) [y(2); (-(y(1)^2 - 1)*y(2) - y(1))];
[Xode45, Yode45] = ode45 (odvod, [0,5], [0,1], opt);
%plot(Xode45, Yode45(:,1));

[XEi,YEi] = Eulerjeva_implicitna_metoda(0, 5, 0.01, 0, 1, @Residual_imp);
%plot(XEi, YEi);

%B) naloga___________________________________________________________________

disp("Pribli?ki s trapezno metodo: ")
[XT, YT] = trapezno_pravilo(0, 5, 0.01, 0, 1, @Residual_trapez, @y_odvod);
%tocna modra, rdeca implicitna, modra eksplicitna, rumena trapezna:
plot(Xode45, Yode45(:,1), "b", XEi, YEi, "r", XEe, YEe, "k", XT, YT, "y");

%?E IZPIS:
disp("Priblizki z vgrajeno metodo (x, y):")
[xode45, yode45] = ode45 (odvod, [0,1], [0,1], opt);
i1 = [xode45(end), yode45(end)]

[xode45, yode45] = ode45 (odvod, [0,2], [0,1], opt);
i2 = [xode45(end), yode45(end)]

[xode45, yode45] = ode45 (odvod, [0,3], [0,1], opt);
i3 = [xode45(end), yode45(end)]

[xode45, yode45] = ode45 (odvod, [0,4], [0,1], opt);
i4 = [xode45(end), yode45(end)]

[xode45, yode45] = ode45 (odvod, [0,5], [0,1], opt);
i5 = [xode45(end), yode45(end)]






