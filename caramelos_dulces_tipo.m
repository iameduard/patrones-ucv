function x=caramelos_dulces_tipo(tipo)
  if tipo=='A'
    %tipo A tiene 70 dulces = 1
    x = ones(1,70);
  else
    %tipo B tiene 30 dulces = 0
    x = zeros(1,30);
  endif
endfunction
