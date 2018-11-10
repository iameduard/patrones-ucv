function x=caramelos_acidos_tipo(tipo)
  %Acido: valor = 0
  if tipo=='A'
    %tipo A tiene 70 dulces
    x = ones(1,30);
  else
    %tipo B tiene 30 dulces
    x = zeros(1,70);
  endif
endfunction
