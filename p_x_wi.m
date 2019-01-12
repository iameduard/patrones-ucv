function p=p_x_wi(x,sigma_i,mu_i,c)
  #p = (1/(sigma_i*sqrt(2*pi)))*exp(-0.5*(x-mu_i).^2/sigma_i.^2)
  p = c*exp(-0.5*(x-mu_i).^2/sigma_i.^2);
endfunction
