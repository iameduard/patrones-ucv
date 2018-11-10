function y=dadoCargado(n)
    %borrar grafico: clf
    %hold on
    tic();
    x=[1 2 2 3 4 4 4 4 5 6];
    %crear un vector 1xn con valores aleatorios..
    lanzadas=x(randi([1 length(x)],n,1));
    size(lanzadas)
    y = histc(lanzadas,1:6)/n;
    size(y)
    title('Lanzamiento de Dado Cargado');
    xlabel('Caras del Dados');
    ylabel('Probabilidad');
    %eqprob=1/6*ones(1,6);
    valo_esperado=histc(x,1:6)/length(x);
    size(valo_esperado)
    dif2=(valo_esperado-y).**2;
    size(dif2)
    error=sqrt(sum(dif2));
    h=bar(1:6,y);
    ylim([0 1]);
    grid on;
    set (h(1), "facecolor", "g");
    title(strcat('Numero de Iteraciones:', num2str(n),' - Error: ',num2str(error)))
    %hold off
    toc();
    
end