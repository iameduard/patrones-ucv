function graficar_muestra_normal(S1,S2,mu1,mu2,npuntos)
  %Grafica de generacion de la distribucion normal con 1000 puntos.
 [v1,d1,q1,z1,y1]=generar_normal_bivariable(S1,mu1,npuntos);
 [v2,d2,q2,z2,y2]=generar_normal_bivariable(S2,mu2,npuntos);
 subplot(1,2,1);
 hold on;
 scatter(y1(1,:),y1(2,:),'+');
 %contour(X,Y,ZT1);
 title({"Fd Normal"});
 hold off;
 %
 subplot(1,2,2);
 hold on;
 scatter(y2(1,:),y2(2,:),'+');
 %contour(X,Y,ZT2);
 title({"Fd Normal"});
 hold off;
endfunction
