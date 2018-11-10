function [pa,pb]=graficarFabricaSubPlot(vector)
  num_graficas=size(vector)(2)
  disp(vector)
  if num_graficas==1
    num_iteraciones=vector
    graficarFabrica(num_iteraciones)
  else
    %graficara solo 4 graficas
    if num_graficas>4
      num_graficas=4
    endif
    
    for k=1:num_graficas
      promedio=0;
      p=simularFabricas(vector(k));
      Y=[p,0.025;1-p,1-0.025];
      xlabel('Eventos');
      ylabel('Probabilidad');
      subplot(2,2,k);
      h = bar (Y);
      set (h(1), "facecolor", "r")
      set (h(2), "facecolor", "g")
      %fig=figure();
      title(strcat('Numero de Iteraciones:', num2str(vector(k))))
      set(gca, 'xticklabel',["P(Defecto)";"P(No Defecto)"]) ;
      ylim([0 1]);
      %ax(2)=subplot(1,2,2); %segunda grafica..
      %set(gca, 'xticklabelmode', 'manual');
      %l = cell(1,2);
      %l{1}='Estimado'; l{2}='Real';    
      %legend(h,l);
      pa=p;
      pb=1-p;
    endfor
  endif
end