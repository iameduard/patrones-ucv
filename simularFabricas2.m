function [y,error]=simularFabricas2(num_iteraciones)
    %Definir cuales son los articulos defectuosos de cada fabrica
    %Fabrica 1 produce 200
    %Fabrica 2 produce 100
    %Fabrica 3 produce 100
    def1=[1,10,33,160];
    def2=[20,33];
    def3=[5,25,70,90];
    def.total=[def1 def2+200 def3+300];
    contar=0;
    for i=1:num_iteraciones
      contar=contar+ismember(randi([1 400]),def.total);
    endfor
    y=contar/num_iteraciones;
    error=abs(y-.025)
end