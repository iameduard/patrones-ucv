function [pa,pb]=graficarCaramelos(num_extracciones)
  promedio=0;
  [pa,pb]=simularCaramelos(num_extracciones);
  Y=[pa,0.777;pb,1-0.777];
  h = bar (Y);
  title('Ejercicio Caramelos');
  xlabel('Eventos');
  ylabel('Probabilidad');
  set (h(1), "facecolor", "r")
  set (h(2), "facecolor", "g")
  %fig=figure();
  %ax(1)=subplot(1,2,1);
  %ax(2)=subplot(1,2,2); %segunda grafica..
  %set(gca, 'xticklabelmode', 'manual');
  set(gca, 'xticklabel',["P(A|Dulce)";"P(A|Dulce) Real";"P(B|Dulce)";"P(B|Dulce) Real"]) ;
  n=num_extracciones;
  title(strcat('Numero de Iteraciones:', num2str(n)))
  ylim([0 1]);
  l = cell(1,2);
  l{1}='Estimado'; l{2}='Real';    
  legend(h,l);
  grid on;
  %text(1:length(Y),Y,num2str(Y'),'vert','bottom','horiz','center'); 
  %box off
  %set(gca,'xtick',xtick);
  %xticklabel=["P(A|Dulce)";"P(B|Dulce)"];
  %[~,o2]=plot(ax(2),ones(1,100)*0.025);
  %plotyy([1 2],pa,1:100,pb);
end