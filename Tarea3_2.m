 figure;
 hold on;
 range = linspace (-5, 5, 100);
 [X, Y] = meshgrid (range, range);
 Z1 = p_x_wi_multidimen2(X, Y,0,0);
 surf(X, Y, Z1);
 %
 Z2 = p_x_wi_multidimen2(X, Y,3,0);
 surf(X, Y, Z2);
 hold off;
 %surf(X, Y, Z);
