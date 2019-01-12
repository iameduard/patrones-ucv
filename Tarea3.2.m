 range = linspace (-5, 5, 100);
 [X, Y] = meshgrid (range, range);
 Z = p_x_wi_multidimen2(X, Y,0,0);
 hold on
 title({"Fd Normal"});
 surf(X, Y, Z);
 %
 Z = p_x_wi_multidimen2(X, Y,1,0);
 surf(X, Y, Z);
 hold off