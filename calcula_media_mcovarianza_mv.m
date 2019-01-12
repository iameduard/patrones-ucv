function [S,mu]=calcula_media_mcovarianza_mv(X)
  %Toma como entrada una matriz (X) 2xN donde la primera fila es la coordenada x del punto y 
  %la segunda fila es la coordenada y del punto.
   suma=0;
   mu=[mean(X(1,:));mean(X(2,:))];
   N=length(X);
   for k=1:N
     suma+=(X(:,k)-mu)*(X(:,k)-mu)';
   endfor
   S=suma/N;
endfunction
