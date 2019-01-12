function xy=fun_xy(x,y)
  %xy={}; %declarar una cell vacia..
  for i=1:length(x)
    for j=1:length(y)
      xy(j+(i-1)*100,1)=x(i);
      xy(j+(i-1)*100,2)=y(j);
    endfor
  endfor
endfunction
