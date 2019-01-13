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
 mu2=[1;1];
 mu3=[0;0];
 mu4=[1;1];
 npuntos=100;
 %Generar 100 muestras de cada clase...
 [V1,D1,Q1,Z1,Y1]=generar_normal_bivariable(S1,mu1,npuntos);
 [V2,D2,Q2,Z2,Y2]=generar_normal_bivariable(S2,mu2,npuntos);
 [V3,D3,Q3,Z3,Y3]=generar_normal_bivariable(S3,mu3,npuntos);
 [V4,D4,Q4,Z4,Y4]=generar_normal_bivariable(S4,mu4,npuntos);
 %Valores Teoricos...
 ZT1 = p_x_wi_multidimen2(X, Y,S1,mu1);
 ZT2 = p_x_wi_multidimen2(X, Y,S2,mu2);
 ZT3 = p_x_wi_multidimen2(X, Y,S3,mu3);
 ZT4 = p_x_wi_multidimen2(X, Y,S4,mu4);
 
 %hold on;
 subplot(2,2,1);
 hold on;
 scatter(Y1(1,:),Y1(2,:),'+');
 contour(X,Y,ZT1);
 title({"Fd Normal"});
 hold off;
 %
 subplot(2,2,2);
 hold on;
 scatter(Y2(1,:),Y2(2,:),'+');
 contour(X,Y,ZT2);
 title({"Fd Normal"});
 hold off;
 %
 subplot(2,2,3);
 hold on;
 scatter(Y3(1,:),Y3(2,:),'+');
 contour(X,Y,ZT3);
 title({"Fd Normal"});
 hold off;
 %
 subplot(2,2,4);
 hold on;
 scatter(Y4(1,:),Y4(2,:),'+');
 contour(X,Y,ZT4);
 title({"Fd Normal"});
 hold off;
  %hold off;
 %Ploteo de la distribucion teorica y la distribucion generada..
 range = linspace (-5, 5, 100);
 [X, Y] = meshgrid (range, range);
 subplot(1,2,1);
 surf(X, Y, ZT1);
 title({"SIGMA=[1 0;0 1] MU=[0;0]"});
 subplot(1,2,2);
 hist3(Z1');
 title({"SIGMA=[1 0;0 1] MU=[0;0]"});
 %
 subplot(1,2,1);
 surf(X, Y, ZT2);
 title({"Teorico SIGMA=[1 0;0 1] MU=[1;1]"});
 subplot(1,2,2);
 hist3(Z2');
 title({"Generado SIGMA=[1 0;0 1] MU=[1;1]"});
 %
 subplot(1,2,1);
 surf(X, Y, ZT3);
 title({"Teorico SIGMA=[1 0.5 ; 0.5 1] MU=[0;0]"});
 subplot(1,2,2);
 hist3(Z3');
 title({"Generado SIGMA=[1 0.5 ; 0.5 1] MU=[0;0]"});
 %
 subplot(1,2,1);
 surf(X, Y, ZT4);
 title({"Teorico SIGMA=[1 0.5 ; 0.5 1] MU=[1;1]"});
 subplot(1,2,2);
 hist3(Z4');
 title({"Generado SIGMA=[1 0.5 ; 0.5 1] MU=[1;1]"});
 %
 %Clasificador Bayes.
 subplot(1,2,1);
 hold on;
 scatter(Y1(1,:),Y1(2,:),'+');
 contour(X,Y,ZT1);
 scatter(Y2(1,:),Y2(2,:),'+');
 contour(X,Y,ZT2);
 title({"Clasificador Nro. 1 SIGMA=[1 0;0 1]"});
 hold off;
 %
 subplot(1,2,2);
 hold on;
 scatter(Y3(1,:),Y3(2,:),'+');
 contour(X,Y,ZT3);
 scatter(Y4(1,:),Y4(2,:),'+');
 contour(X,Y,ZT4);
 title({"Clasificador Nro. 2 SIGMA=[1 0.5;0.5 1]"});
 hold off;