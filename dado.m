function y=dado(n)
    %hold on
    tic();
    lanzadas=randi([1 6],n,1);
    y = histc(lanzadas,1:6)/n
    title('Lanzamiento de Dado');
    xlabel('Caras del Dados');
    ylabel('Probabilidad');
    %ax=get(gca);
    %sqrt(sum([1,2,3].**2))
    eqprob=1/6*ones(6,1)
    size(eqprob)
    size(y)
    dif2=(eqprob-y).**2
    error=sqrt(sum(dif2))
    h=bar(1:6,y)  ;
    ylim([0 1]);
    set (h(1), "facecolor", "g");
    title(strcat('Numero de Iteraciones:', num2str(n),' - Error: ',num2str(error)))
    %hold off
    toc()
end