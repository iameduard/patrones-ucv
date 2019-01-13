function p=p_x_wi_multidimen2(x,y,sigma_i,mu_i)
  #p = (1/(sigma_i*sqrt(2*pi)))*exp(-0.5*(x-mu_i).^2/sigma_i.^2)
  %a=0;
  %b=1;
  %c=d=0;
  %p1=p2=0.5;
  d= length(mu_i);
  %m=10;
  sigma_i_INV  = sigma_i**(-1);
  determ_sigma = det(sigma_i);
  m = 1 /sqrt((2*pi)**d * determ_sigma );
  for i=1:length(x)
    for j=1:length(y)
      xy=[x(i,j);y(i,j)];
      p(i,j) = m*exp(-0.5*(xy-mu_i)'*sigma_i_INV*(xy-mu_i));
    endfor
  endfor
endfunction