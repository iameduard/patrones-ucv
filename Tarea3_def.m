%Tarea3_def
 %x = [1 2];
 %mu = [0.5 1.5];
 %sigma = [1.0 0.5; 0.5 1.0];
 %p = mvncdf (x, mu, sigma);
 %Parametros..
 S1=[1 0 ; 0 1];
 S2=[1 0 ; 0 1];
 S3=[1 0.5 ; 0.5 1];
 S4=[1 0.5 ; 0.5 1];
 mu1=[0;0];
 mu2=[1,1];
 mu3=[0;0];
 mu4=[1,1];
 npuntos=100;
 %Generar 100 muestras de cada clase...
 %hold on;
 subplot(2,2,1);
 [V1,D1,Q1,Z1,Y1]=generar_normal_bivariable(S1,mu1,npuntos);
 scatter(Y1(1,:),Y1(2,:),'+');
 subplot(2,2,2);
 [V2,D2,Q2,Z2,Y2]=generar_normal_bivariable(S2,mu2,npuntos);
 scatter(Y2(1,:),Y2(2,:),'+');
 subplot(2,2,3);
 [V3,D3,Q3,Z3,Y3]=generar_normal_bivariable(S3,mu3,npuntos);
 scatter(Y3(1,:),Y3(2,:),'+');
 subplot(2,2,4);
 [V4,D4,Q4,Z4,Y4]=generar_normal_bivariable(S4,mu4,npuntos);
 scatter(Y4(1,:),Y4(2,:),'+');
  %hold off;
 %Ploteo de la distribucion teorica y la distribucion generada..
 range = linspace (-5, 5, 100);
 [X, Y] = meshgrid (range, range);
 subplot(1,2,1);
 Z = p_x_wi_multidimen2(X, Y,[1 0 ; 0 1],[0;0]);
 surf(X, Y, Z);
 subplot(1,2,2);
 hist3(Z1');
 