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
 %Generar 100 muestras de cada clase...
 hold on;
 [V1,D1,Q1,Z1,Y1]=generar_normal_bivariable(S1,mu1,100);
 scatter(Y1(1,:),Y1(2,:),'+');
 [V2,D2,Q2,Z2,Y2]=generar_normal_bivariable(S2,mu2,100);
 scatter(Y2(1,:),Y2(2,:),'o');
 [V3,D3,Q3,Z3,Y3]=generar_normal_bivariable(S3,mu3,100);
 scatter(Y3(1,:),Y3(2,:),'o');
 [V4,D4,Q4,Z4,Y4]=generar_normal_bivariable(S4,mu4,100);
 scatter(Y4(1,:),Y4(2,:),'o');
 hold off;