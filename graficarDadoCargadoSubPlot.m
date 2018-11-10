function [pa,pb]=graficarDadoCargadoSubPlot(vector)
    num_graficas=size(vector)(2)
    if num_graficas==1
      num_iteraciones=vector
      dadoCargado(num_iteraciones)
    else
      %Graficara solo 4 graficas..
      if num_graficas>4
        num_graficas=4
      endif
    
      clf;
      
      for k=1:num_graficas
        subplot(2,2,k);
        dadoCargado(vector(k));
      endfor
      
    endif
end