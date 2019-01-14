function [clase1,clase2]=regla_dec_sigma_iguales_diagonal(Y,mu1,mu2,clase1,clase2)
 for i=1:length(Y)
   x=[Y(1,i);Y(2,i)];
   d1=norm(x-mu1,2);
   d2=norm(x-mu2,2);
   if (d1>d2)
    clase2=[clase2,x];
   elseif (d2>d1)
    clase1=[clase1,x];
   else
    %lanza una moneda
    if (rand()<0.5)
      clase1=[clase1,x];
    else
      clase2=[clase2,x];
    endif
   endif
 endfor
endfunction
