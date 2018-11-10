function y=dadoCargado(n)
    %borrar grafico: clf
    %hold on
    tic();
    x=[1 1 2 2 2 2 3 4 4 4 4 4 5 6];
    %crear un vector 1xn con valores aleatorios..
    lanzadas=x(randi([1 size(x,2)],n,1));
    y = histc(lanzadas,1:6)/n;
    title('Lanzamiento de Dado Cargado');
    xlabel('Caras del Dados');
    ylabel('Probabilidad');
    eqprob=1/6*ones(1,6);
    dif2=(eqprob-y).**2;
    error=sqrt(sum(dif2));
    h=bar(1:6,y);
    ylim([0 1]);
    grid on;
    set (h(1), "facecolor", "g");
    title(strcat('Numero de Iteraciones:', num2str(n),' - Error: ',num2str(error)))
    %hold off
    toc();
    
end