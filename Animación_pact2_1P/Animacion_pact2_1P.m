clear all
clc

close all
%line ([Xi Xf],[Yi Yf],[Zi Zf]);
line ([-10 10],[0 0],[0 0], 'color',[1 0 0], 'linewidth',2.5); % Establece el eje X en Rojo.
line ([0 0],[-10 10],[0 0], 'color',[0 1 0], 'linewidth',2.5); % Establece el eje Y en Verde.
line ([0 0],[0 0],[-10 10], 'color',[0 0 1], 'linewidth',2.5); % Establece el eje z en Azul.


grid on         %Con esta linea hacemos que nuestra grafica cuente con cordenadas visibles.
view (120,30);  %Con esta linea delimitamos la grafica de cordenadas en 3D. 


p1 = [0 0 0];
p2 = [0 3 0];
p3 = [0 3 2];
p4 = [0 0 2];

p5 = [7 0 0];
p6 = [7 3 0];
p7 = [7 3 2];
p8 = [7 0 2];


line([p1(1) p5(1)],[p1(2) p5(2)],[p1(3) p5(3)], 'color',[0 0 0], 'linewidth',3);
line([p5(1) p6(1)],[p5(2) p6(2)],[p5(3) p6(3)], 'color',[0 0 0], 'linewidth',3);
line([p6(1) p2(1)],[p6(2) p2(2)],[p6(3) p2(3)], 'color',[0 0 0], 'linewidth',3);
line([p2(1) p1(1)],[p2(2) p1(2)],[p2(3) p1(3)], 'color',[0 0 0], 'linewidth',3);



line([p4(1) p8(1)],[p4(2) p8(2)],[p4(3) p8(3)], 'color',[0 0 0], 'linewidth',3);
line([p8(1) p7(1)],[p8(2) p7(2)],[p8(3) p7(3)], 'color',[0 0 0], 'linewidth',3);
line([p7(1) p3(1)],[p7(2) p3(2)],[p7(3) p3(3)], 'color',[0 0 0], 'linewidth',3);
line([p3(1) p4(1)],[p3(2) p4(2)],[p3(3) p4(3)], 'color',[0 0 0], 'linewidth',3);



line([p1(1) p4(1)],[p1(2) p4(2)],[p1(3) p4(3)], 'color',[0 0 0], 'linewidth',3);
line([p2(1) p3(1)],[p2(2) p3(2)],[p2(3) p3(3)], 'color',[0 0 0], 'linewidth',3);
line([p5(1) p8(1)],[p5(2) p8(2)],[p5(3) p8(3)], 'color',[0 0 0], 'linewidth',3);
line([p6(1) p7(1)],[p6(2) p7(2)],[p6(3) p7(3)], 'color',[0 0 0], 'linewidth',3);




Theta = input('Introduce el valor en grados para el eje Z(Theta) = ');
Phi = input('Introduce el valor en grados para el eje X(Phi) = ');
Psi = input('Introduce el valor en grados para el eje Y(Psi) = ');


piTheta = deg2rad(Theta);


for t=0:0.01:piTheta 

clf %para limpiar la imagen 

line ([-10 10],[0 0],[0 0], 'color',[1 0 0], 'linewidth',2.5); % Establece el eje X en Rojo.
line ([0 0],[-10 10],[0 0], 'color',[0 1 0], 'linewidth',2.5); % Establece el eje Y en Verde.
line ([0 0],[0 0],[-10 10], 'color',[0 0 1], 'linewidth',2.5); % Establece el eje z en Azul


grid on         %Con esta linea hacemos que nuestra grafica cuente con cordenadas visibles.
view (120,30);  %Con esta linea delimitamos la grafica de cordenadas en 3D. 


Rz = [cos(t) -sin(t) 0; sin(t) cos(t) 0; 0 0 1];


rp1 = Rz*(p1');
rp2 = Rz*(p2');
rp3 = Rz*(p3');
rp4 = Rz*(p4');
rp5 = Rz*(p5');
rp6 = Rz*(p6');
rp7 = Rz*(p7');
rp8 = Rz*(p8');


line([rp1(1) rp5(1)],[rp1(2) rp5(2)],[rp1(3) rp5(3)], 'color',[0 0 0], 'linewidth',3);
line([rp5(1) rp6(1)],[rp5(2) rp6(2)],[rp5(3) rp6(3)], 'color',[0 0 0], 'linewidth',3);
line([rp6(1) rp2(1)],[rp6(2) rp2(2)],[rp6(3) rp2(3)], 'color',[0 0 0], 'linewidth',3);
line([rp2(1) rp1(1)],[rp2(2) rp1(2)],[rp2(3) rp1(3)], 'color',[0 0 0], 'linewidth',3);



line([rp4(1) rp8(1)],[rp4(2) rp8(2)],[rp4(3) rp8(3)], 'color',[0 0 0], 'linewidth',3);
line([rp8(1) rp7(1)],[rp8(2) rp7(2)],[rp8(3) rp7(3)], 'color',[0 0 0], 'linewidth',3);
line([rp7(1) rp3(1)],[rp7(2) rp3(2)],[rp7(3) rp3(3)], 'color',[0 0 0], 'linewidth',3);
line([rp3(1) rp4(1)],[rp3(2) rp4(2)],[rp3(3) rp4(3)], 'color',[0 0 0], 'linewidth',3);



line([rp1(1) rp4(1)],[rp1(2) rp4(2)],[rp1(3) rp4(3)], 'color',[0 0 0], 'linewidth',3);
line([rp2(1) rp3(1)],[rp2(2) rp3(2)],[rp2(3) rp3(3)], 'color',[0 0 0], 'linewidth',3);
line([rp5(1) rp8(1)],[rp5(2) rp8(2)],[rp5(3) rp8(3)], 'color',[0 0 0], 'linewidth',3);
line([rp6(1) rp7(1)],[rp6(2) rp7(2)],[rp6(3) rp7(3)], 'color',[0 0 0], 'linewidth',3);


pause (0.01); %Esta pausa es para poder visualizar el cambio progresivo. 

end


piPhi = deg2rad(Phi);


for t=0:0.01:piPhi 

clf %para limpiar la imagen 

line ([-10 10],[0 0],[0 0], 'color',[1 0 0], 'linewidth',2.5); % Establece el eje X en Rojo.
line ([0 0],[-10 10],[0 0], 'color',[0 1 0], 'linewidth',2.5); % Establece el eje Y en Verde.
line ([0 0],[0 0],[-10 10], 'color',[0 0 1], 'linewidth',2.5); % Establece el eje z en Azul


grid on         %Con esta linea hacemos que nuestra grafica cuente con cordenadas visibles.
view (120,30);  %Con esta linea delimitamos la grafica de cordenadas en 3D. 


Rx = [1 0 0; 0 cos(t) -sin(t); 0 sin(t) cos(t)];


Rp1 = Rx*(rp1);
Rp2 = Rx*(rp2);
Rp3 = Rx*(rp3);
Rp4 = Rx*(rp4);
Rp5 = Rx*(rp5);
Rp6 = Rx*(rp6);
Rp7 = Rx*(rp7);
Rp8 = Rx*(rp8);


line([Rp1(1) Rp5(1)],[Rp1(2) Rp5(2)],[Rp1(3) Rp5(3)], 'color',[0 0 0], 'linewidth',3);
line([Rp5(1) Rp6(1)],[Rp5(2) Rp6(2)],[Rp5(3) Rp6(3)], 'color',[0 0 0], 'linewidth',3);
line([Rp6(1) Rp2(1)],[Rp6(2) Rp2(2)],[Rp6(3) Rp2(3)], 'color',[0 0 0], 'linewidth',3);
line([Rp2(1) Rp1(1)],[Rp2(2) Rp1(2)],[Rp2(3) Rp1(3)], 'color',[0 0 0], 'linewidth',3);



line([Rp4(1) Rp8(1)],[Rp4(2) Rp8(2)],[Rp4(3) Rp8(3)], 'color',[0 0 0], 'linewidth',3);
line([Rp8(1) Rp7(1)],[Rp8(2) Rp7(2)],[Rp8(3) Rp7(3)], 'color',[0 0 0], 'linewidth',3);
line([Rp7(1) Rp3(1)],[Rp7(2) Rp3(2)],[Rp7(3) Rp3(3)], 'color',[0 0 0], 'linewidth',3);
line([Rp3(1) Rp4(1)],[Rp3(2) Rp4(2)],[Rp3(3) Rp4(3)], 'color',[0 0 0], 'linewidth',3);



line([Rp1(1) Rp4(1)],[Rp1(2) Rp4(2)],[Rp1(3) Rp4(3)], 'color',[0 0 0], 'linewidth',3);
line([Rp2(1) Rp3(1)],[Rp2(2) Rp3(2)],[Rp2(3) Rp3(3)], 'color',[0 0 0], 'linewidth',3);
line([Rp5(1) Rp8(1)],[Rp5(2) Rp8(2)],[Rp5(3) Rp8(3)], 'color',[0 0 0], 'linewidth',3);
line([Rp6(1) Rp7(1)],[Rp6(2) Rp7(2)],[Rp6(3) Rp7(3)], 'color',[0 0 0], 'linewidth',3);


pause (0.01); %Esta pausa es para poder visualizar el cambio progresivo. 

end


piPsi = deg2rad(Psi);


for t=0:0.01:piPsi 

clf %para limpiar la imagen 

line ([-10 10],[0 0],[0 0], 'color',[1 0 0], 'linewidth',2.5); % Establece el eje X en Rojo.
line ([0 0],[-10 10],[0 0], 'color',[0 1 0], 'linewidth',2.5); % Establece el eje Y en Verde.
line ([0 0],[0 0],[-10 10], 'color',[0 0 1], 'linewidth',2.5); % Establece el eje z en Azul


grid on         %Con esta linea hacemos que nuestra grafica cuente con cordenadas visibles.
view (120,30);  %Con esta linea delimitamos la grafica de cordenadas en 3D. 


Ry = [cos(t) 0 sin(t); 0 1 0; -sin(t) 0 cos(t)];


rp1 = Ry*(Rp1);
rp2 = Ry*(Rp2);
rp3 = Ry*(Rp3);
rp4 = Ry*(Rp4);
rp5 = Ry*(Rp5);
rp6 = Ry*(Rp6);
rp7 = Ry*(Rp7);
rp8 = Ry*(Rp8);


line([rp1(1) rp5(1)],[rp1(2) rp5(2)],[rp1(3) rp5(3)], 'color',[0 0 0], 'linewidth',3);
line([rp5(1) rp6(1)],[rp5(2) rp6(2)],[rp5(3) rp6(3)], 'color',[0 0 0], 'linewidth',3);
line([rp6(1) rp2(1)],[rp6(2) rp2(2)],[rp6(3) rp2(3)], 'color',[0 0 0], 'linewidth',3);
line([rp2(1) rp1(1)],[rp2(2) rp1(2)],[rp2(3) rp1(3)], 'color',[0 0 0], 'linewidth',3);



line([rp4(1) rp8(1)],[rp4(2) rp8(2)],[rp4(3) rp8(3)], 'color',[0 0 0], 'linewidth',3);
line([rp8(1) rp7(1)],[rp8(2) rp7(2)],[rp8(3) rp7(3)], 'color',[0 0 0], 'linewidth',3);
line([rp7(1) rp3(1)],[rp7(2) rp3(2)],[rp7(3) rp3(3)], 'color',[0 0 0], 'linewidth',3);
line([rp3(1) rp4(1)],[rp3(2) rp4(2)],[rp3(3) rp4(3)], 'color',[0 0 0], 'linewidth',3);



line([rp1(1) rp4(1)],[rp1(2) rp4(2)],[rp1(3) rp4(3)], 'color',[0 0 0], 'linewidth',3);
line([rp2(1) rp3(1)],[rp2(2) rp3(2)],[rp2(3) rp3(3)], 'color',[0 0 0], 'linewidth',3);
line([rp5(1) rp8(1)],[rp5(2) rp8(2)],[rp5(3) rp8(3)], 'color',[0 0 0], 'linewidth',3);
line([rp6(1) rp7(1)],[rp6(2) rp7(2)],[rp6(3) rp7(3)], 'color',[0 0 0], 'linewidth',3);



pause (0.01); %Esta pausa es para poder visualizar el cambio progresivo. 

end








