function [pa,pb]=graficarFabricaSubPlot(vector)
    num_graficas=size(vector)(2)
    if num_graficas==1
      disp('Entro');
      num_iteraciones=vector
      graficarFabrica(num_iteraciones)
    else
      %Graficara solo 4 graficas..
      if num_graficas>4
        num_graficas=4
      endif
    
      clf;
      
      for k=1:num_graficas
        promedio=0;
        [p,error]=simularFabricas(vector(k));
        Y=[p,0.025];
        xlabel('Eventos');
        ylabel('Probabilidad');
        subplot(2,2,k);
        %.5 ancho de la barra
        h = bar (Y,.5); 
        grid on
        colormap(summer(2));
        size(h)
        %set (h(1), "facecolor", "r")
        set (h(1), "facecolor", "g")
        title(strcat('Numero de Iteraciones:', num2str(vector(k)),' - Error: ',num2str(error)))
        set(gca, 'xticklabel',["P(Defecto) Estimado";"P(Defecto) Real"]) ;
        ylim([0 .1]);
        pa=p;
        pb=1-p;
      endfor
    endif
end