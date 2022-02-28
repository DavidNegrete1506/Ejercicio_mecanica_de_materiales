%======================================
% Datos del problema a dise;ar
%======================================

tau_max = 12 ; % Esfuerzo cortante permisible [kips]
c1 = 2 ; % radio interior del eje [pulg]
c2 = 3 ; % radio exterior del eje [pulg]

%=====================================
% Apartado a del ejercicio
%=====================================

J = M_iner(c1,c2);
T = Par(tau_max,c2,J); 

%=====================================
% Apartado b del ejercicio 
%=====================================

# Sabemos que el area transversal es igual por tanto se iguala y se encuentra c3
A1 = Atubo(c1,c2);
c3 = (2*A1/pi).^(1/2);
Jb = M_iner(0,c3);
Tb = Par(tau_max,c3,Jb);

%=====================================
% Apartado c del ejercicio 
%=====================================

c4 = 4 ; % radio exterior del eje en este apartado [pulg]
A2 = A1;
c5 = ((c4.^2)-((2/pi)*(A2))).^(1/2);
Jc = M_iner(c5,c4);
Tc = Par(tau_max,c4,Jc);

%======================================
% Impresión de resultados
%======================================

fprintf('APARTADO A');
disp(' ');
fprintf('El momento de inercia es: %d\n[pulg^4]', J);
disp(' ');
fprintf('El par maximo es: %d\n[kips*pulg]', T);
disp(' ');
disp('--------------------');
fprintf('APARTADO B');
disp(' ');
fprintf('El momento de inercia es: %d\n[pulg^4]', Jb);
disp(' ');
fprintf('El par maximo es: %d\n[kips*pulg]', Tb);
disp(' ');
disp('--------------------');
fprintf('APARTADO C');
disp(' ');
fprintf('El momento de inercia es: %d\n[pulg^4]', Jc);
disp(' ');
fprintf('El par maximo es: %d\n[kips*pulg]', Tc);
disp(' ');
disp('--------------------');

