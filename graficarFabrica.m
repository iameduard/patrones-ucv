function [pa,pb]=graficarFabrica(num_iteraciones,num_graficas=1)
  promedio=0;
  p=simularFabricas(num_iteraciones);
  Y=[p,0.025;1-p,1-0.025];
  title('Ejercicio Fabricas');
  xlabel('Eventos');
  ylabel('Probabilidad');
  h = bar (Y);
  set (h(1), "facecolor", "r")
  set (h(2), "facecolor", "g")
  %fig=figure();
  %ax(1)=subplot(1,2,1);
  %ax(2)=subplot(1,2,2); %segunda grafica..
  %set(gca, 'xticklabelmode', 'manual');
  set(gca, 'xticklabel',["P(Defecto)";"P(No Defecto)"]) ;
  ylim([0 1]);
  l = cell(1,2);
  l{1}='Estimado'; l{2}='Real';    
  legend(h,l);
  pa=p;
  pb=1-p;
  %text(1:length(Y),Y,num2str(Y'),'vert','bottom','horiz','center'); 
  %box off
  %set(gca,'xtick',xtick);
  %xticklabel=["P(A|Dulce)";"P(B|Dulce)"];
  %[~,o2]=plot(ax(2),ones(1,100)*0.025);
  %plotyy([1 2],pa,1:100,pb);
end