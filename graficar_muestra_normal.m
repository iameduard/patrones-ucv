function graficar_muestra_normal(S1,S2,S3,S4,mu1,mu2,mu3,mu4,npuntos)
  %Grafica de generacion de la distribucion normal con 1000 puntos.
 [v1,d1,q1,z1,y1]=generar_normal_bivariable(S1,mu1,npuntos);
 [v2,d2,q2,z2,y2]=generar_normal_bivariable(S2,mu2,npuntos);
 [v3,d3,q3,z3,y3]=generar_normal_bivariable(S3,mu3,npuntos);
 [v4,d4,q4,z4,y4]=generar_normal_bivariable(S4,mu4,npuntos);
 subplot(2,2,1);
 hold on;
 scatter(y1(1,:),y1(2,:),'+');
 %contour(X,Y,ZT1);
 title({"Fd Normal"});
 hold off;
 %
 subplot(2,2,2);
 hold on;
 scatter(y2(1,:),y2(2,:),'+');
 %contour(X,Y,ZT2);
 title({"Fd Normal"});
 hold off;
 %
 subplot(2,2,3);
 hold on;
 scatter(y3(1,:),y3(2,:),'+');
 %contour(X,Y,ZT3);
 title({"Fd Normal"});
 hold off;
 %
 subplot(2,2,4);
 hold on;
 scatter(y4(1,:),y4(2,:),'+');
 %contour(X,Y,ZT4);
 title({"Fd Normal"});
 hold off;
endfunction
