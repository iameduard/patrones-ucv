function [pa,pb]=graficarGaussiana2D(n,sigma1,sigma2,corte)
      clf;
      for k=1:4
        subplot(2,2,k);
        gaussiana3(10,sigma1,sigma2,corte);
      endfor
      
end