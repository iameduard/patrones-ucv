function [probA_dado_dulce,probB_dado_dulce]=simularCaramelos(niteraciones)
    %niteraciones es el numero de veces que se va a simular extraer un caramelo de cierto tipo (dulce)..
    %n:numero de bolsas totales A + B.
    bolsasDulce =[];
    bolsasAcidas=[];
    %Se producieron 100 bolsas de caramelo, 60 tipo A y 40 tipo B.
    for i=1:60
        %Separar dulces y acidos...       
        bolsasDulce  =[bolsasDulce caramelos_dulces_tipo('A')];
        bolsasAcidas =[bolsasAcidas caramelos_acidos_tipo('A')];
    endfor
    for i=1:40
        bolsasDulce  =[bolsasDulce caramelos_dulces_tipo('B')];
        bolsasAcidas =[bolsasAcidas caramelos_acidos_tipo('B')];
    endfor
    contA=0;
    contB=0;
    %sum(bolsasDulce)
    %length(bolsasDulce)
    sum(bolsasDulce)/length(bolsasDulce)
    for i=1:niteraciones
        if bolsasDulce(randi([1 length(bolsasDulce)]))==1
            contA=contA+1;
        else
            contB=contB+1;
        end
    end
    probA_dado_dulce=contA/niteraciones;
    probB_dado_dulce=contB/niteraciones;
end
