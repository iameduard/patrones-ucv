#Clasificador Gaussiano Parte Nro.1
  #f9 para ejecutar...
  #Calculo del punto de corte.
  #4*exp(-0.5(x-3)^2/sigma1^2)=6*exp(-0.5(x-8)^2/sigma2^2)
  #Despejando
  #Si sigma1=sigma2=sigma
  #x=(55-0.81093*sigma^2)/10
  pkg load statistics;
  graficarGaussiana2D(10,1,1,5.4189);
  graficarGaussiana2D(10,2,2,5.1756);
  graficarGaussiana2D(10,4,4,4.2025);

