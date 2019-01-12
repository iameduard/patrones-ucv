function error=clasificar(clasificador,vector,n)
  N=2*n;
  clase1=[];
  clase2=[];
  i1=1;
  i2=1;
  for i=1:N
  if vector(i)<clasificador
    clase1(i1++)=i;
  elseif vector(i) > clasificador
    clase2(i2++)=i;
  else
    #Lanzamiento de la moneda 0:cara 1:sello
     if randi([0 1])==0
       clase1(i1++)=i;
     else
       clase2(i2++)=i;
     endif
  endif
endfor
#Calculo del Error.
error=(sum(clase1>n)+sum(clase2<n))/N;

endfunction
