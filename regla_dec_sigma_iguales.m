function [clase1,clase2]=regla_dec_sigma_iguales(Y,sigma,mu1,mu2,clase1,clase2)
 sigma_INV  = sigma**(-1);
 for i=1:length(Y)
   x=[Y(1,i);Y(2,i)];
   d1=(x-mu1)'*sigma_INV*(x-mu1);
   d2=(x-mu2)'*sigma_INV*(x-mu2);
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