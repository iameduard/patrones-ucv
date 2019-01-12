function y=dosDados(n)
    %hold on
    tic();
    lanzadas1=randi([1 6],n,1);
    lanzadas2=randi([1 6],n,1);
    lanzadas = lanzadas1 + lanzadas2;
    y = histc(lanzadas,2:12)/n
    title('Lanzamiento de Dado');
    xlabel('Caras del Dados');
    ylabel('Probabilidad');
    %ax=get(gca);
    %sqrt(sum([1,2,3].**2))
    eqprob=[1/36,2/36,3/36,4/36,5/36,6/36,5/36,4/36,3/36,2/36,1/36]';
    size(eqprob)
    size(y)
    dif2=(eqprob-y).**2
    error=sqrt(sum(dif2))
    h=bar(2:12,y)  ;
    ylim([0 .5]);
    grid on;
    set (h(1), "facecolor", "g");
    title(strcat('Numero de Iteraciones:', num2str(n),' - Error: ',num2str(error)))
    %hold off
    toc()
end