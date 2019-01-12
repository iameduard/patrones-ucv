 range = linspace (-5, 5, 100);
 [X, Y] = meshgrid (range, range);
 Z = p_x_wi_multidimen2(X, Y,0,0);
 hold on
 subplot(2,2,1);
 title({"Fd Normal"});
 %surf(X, Y, Z);
 waterfall(X,Y,Z);
 subplot(2,2,2);
 title({"Contorno"});
 contour(X,Y,Z);
 axes equal;
 %meshc(Z);
 hold off;
 
 %
 Z = p_x_wi_multidimen2(X, Y,1,0);
 subplot(2,2,3);
 title({"Fd Normal"});
 surf(X, Y, Z);
 subplot(2,2,4);
 title({"Contorno"});
 contour(Z);
 hold off
 % Generar variable aleatorio normal con media 500 y varianza 5
 % a = 5;
 % b = 500;
 % y = a.*randn(1000,1) + b;
 %pkg load statistics;
 x = [1 2];
 mu = [0.5 1.5];
 sigma = [1.0 0.5; 0.5 1.0];
 p = mvncdf (x, mu, sigma);
 %Definir las variables aleatorias xi = 12 U(0,1) - 6; dichas variables aleatorias 
 %segun el teorema central del limite se aproximan a N(0,1)
  x1=sum(rand(1,12))-6;
 for i=1:10000
   h(i)=sum(rand(1,12))-6;
 endfor
 hist(h);
 %Matriz de covarianza
 S=[1 0.3;0.3 0.6];
 mu=[1;2];
 S1=[1 0;0 1];
 S2=[1 0;0 1];
 mu1=[0;0];
 mu2=[1,1];
 %Calculo de autovectores
 [V,D]=eig(S)
 %Calculo de Q
 Q=(D**0.5)*V
 %Nueva variable Normal con media mu y matriz de covarianza sigma
 Y=Q*X+mu;
 %generar 100 puntos segun la distribucion N(mu,Sigma)
 hold on;
 for i=1:1000
   [p,V,D,Q]=generar_normal_bivariable(S1,mu1);
   x(i)= p(1);
   y(i)= p(2);
 endfor;
 scatter(x,y);
 hold off;
 %Verificar resultados...
 mu1=[mean(x);mean(y)];
 z=[x;y];
 suma=0;
 N=length(x);
 for k=1:N
   suma+=(z(:,k)-mu1)*(z(:,k)-mu1)';
 endfor
 disp('Media mu:');
 disp(mu1);
 disp('Matriz de Covarianza');
 disp(suma/N);
 
   
 
 
