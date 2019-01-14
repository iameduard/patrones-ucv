function X=frontera_decision_sigmas_iguales(sigma,mu1,mu2)
  %w'(x-x0)=0
  sigma_INV  = sigma**(-1);
  w=sigma_INV*(mu1-mu2);
  x0=0.5*(mu1+mu2);
  k=w'*x0;
  x1=linspace (-5, 5, 100);
  for i=1:100
    m=w(1)/w(2); %pendiente..
    x2=(k/w(2))-m*x1;
  endfor
  X=[x1;x2];
endfunction