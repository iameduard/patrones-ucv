function p=p_x_wi_multidimen(y)
  #p = (1/(sigma_i*sqrt(2*pi)))*exp(-0.5*(x-mu_i).^2/sigma_i.^2)
  sigma_i=[1 2;2 1];
  mu_i=10;
  for i=1:length(y)
    x=y{i}';
    c=10;
    d= length(mu_i);
    sigma_i_INV  = sigma_i**(-1);
    determ_sigma = det(sigma_i);
    #c = 1 /sqrt((2*pi)**d * determ_sigma )
    p(i) = c*exp(-0.5*(x-mu_i)'*sigma_i_INV*(x-mu_i));
  endfor
endfunction