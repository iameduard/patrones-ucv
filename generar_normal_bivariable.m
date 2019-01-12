function [V,D,Q,Z,Y]=generar_normal_bivariable(S,mu,N)
  %S:Matriz de covarianza..
  %mu: Vector [mu1 u1] media de la distribucion..
   %Matriz de covarianza
   %S=[1 0.3;0.3 0.6];
   %mu=[1;2];

   %Calculo de autovectores
   [V,D]=eig(S);
   %D=[1.1606 0;0 0.4394];
   %V=[.8817 .4719;.4719 -.8817];
   %Calculo de Q
   %Q=(D**0.5)*V;
   Q=V*(D^0.5);
   %Nueva variable Y se distribuye como Normal con media mu y matriz de covarianza sigma
   for i=1:N
    %Segun el Teoreme Central del Limite la suma de estas 12 variables U(0,1) tienden a N(0,1);
    r     = [sum(rand(1,12))-6;sum(rand(1,12))-6];
    z1(i) = r(1);
    z2(i) = r(2);
    %La variable aleatoria X se distribuye como Normal con media [0 0] y matriz de covarianza I2=[1 0;0 1]
    p     = Q*r+mu;
    y1(i) = p(1);
    y2(i) = p(2);
   endfor;
   Z=[z1;z2];
   Y=[y1;y2];
endfunction
