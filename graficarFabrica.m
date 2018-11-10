function [pa,pb]=graficarFabrica(num_iteraciones)
  promedio=0;
  [p,error]=simularFabricas(num_iteraciones);
  Y=[p,0.025];
  title('Ejercicio Fabricas');
  xlabel('Eventos');
  ylabel('Probabilidad');
  h = bar (Y);
  grid on
  set (h(1), "facecolor", "g")
  title(strcat('Numero de Iteraciones:', num2str(num_iteraciones),' - Error: ',num2str(error)))
  set(gca, 'xticklabel',["P(Defecto) Estimado ";"P(Defecto) Real"]) ;
  ylim([0 .1]);
  pa=p;
  pb=1-p;
end