function y=gaussiana1(n)
#tarea2:
#Eduardo Jimenez
#Dos distribuciones gaussianas.
#Media de las gaussianas: mu1=3, mu2=8
#Constante o maximo de la gaussianas: max1=4 y max2=6
#La regla de clasificación de Bayes:
#asignar a x la clase para la que su probabilidad a posteriori sea mayor.
#Regla de decisión de Bayes:
#Decidir w1 si P(w1 | x) > P(w2| x), y w2 en otro caso.
#
#Cuando P(x|w1) = P(x|w2), x no es capaz de aportar información sobre su clase cierta y la decisión se toma 
#según los valores de p1 y p2. Por otro lado, cuando p1 = p2 la decisión se toma en base a los valores de 
#P(x|wj), y en estos casos se habla de la verosimilitud de x respecto a wj y la regla de decisión autilizar 
#Es la regla de máxima verosimilitud: Decidir w1 si P(x|w1 )  >  P(x|w2), y w2 en otro caso.
#
#Para la elección de la clase que minimiza el error, seleccionar ?i si P(?i|X) > P(?j|X) para toda j ? i.
#Un clasificador basado en la Regla de Bayes puede representarse de esta manera. Establecemos que: 
#gi(X) = P(?i| X) 
#De forma que el mayor valor discriminante se alcanza para la clase con mayor probabilidad a posteriori
#Para el caso de un problema de clasificación entre dos clases la formulación se simplifica notablemente. En lugar de calcular dos funciones discriminantes, g1(X) y g2(X) y seleccionar w1 si g1(X) > g2(X), resulta más conveniente definir una única función discriminante, 
#g(X) = g1(X) - g2(X) y utilizar la siguiente regla de decisión: 
#Seleccionar ?1 si g(X) > 0, y ?2 en caso contrario.
#P(error)=1 – P(acierto) 
#Clasificador de Bayes de Minimo Error:
#gi(X) = p(X| ?i) pi
#Generar variables aleatorias siguiendo una distribucion normal unvariada
#pkg load statistics
#normrnd (mu, sigma)
######################
#Parametros:
#n:numeros de puntos generados con cada distribucion.

x=linspace(-5,15,100);
#z1=p_x_wi(x,2,3);z2=p_x_wi(x,2,8);
#z1=p_x_wi(x,10.027,3);z2=p_x_wi(x,15.040,8);
mu1=3;sigma1=2;c1=4;
mu2=8;sigma2=2;c2=6;
z1=p_x_wi(x,sigma1,mu1,c1);z2=p_x_wi(x,sigma2,mu2,c2);
hold on;
plot(x,z1);plot(x,z2);plot(5.1756*ones(1,100),linspace(0,6,100));
#Data de prueba..
norm1=normrnd(3,2,[1,1000]);
norm2=normrnd(8,2,[1,1000]);
#Frontera de Clasificacion.
clasificador=5.1756;
eps1=0.5;
norm1=norm1(norm1>clasificador-eps1 & norm1< clasificador+eps1)(1:n);
norm2=norm2(norm2>clasificador-eps1 & norm2< clasificador+eps1)(1:n);
#
plot(norm1,p_x_wi(norm1,sigma1,mu1,c1),'x');
plot(norm2,p_x_wi(norm2,sigma2,mu2,c2),'o');
#Clasificacion usando la frontera de clasificacion:
# Si x < 5.1756 entonces pertenecen a la clase 1
# Si x > 5.1756 entonces pertenecen a la clsase 2
# Si x = 5.1756 se lanza una moneda cara (c) o sello (s) 
#               si es 'c' pertenece a clase 1 y si es 's' pertenece a la clase 2.
vector=[norm1,norm2];
#N: Tamano del vector.
#
N=2*n;
clase1=[];
clase2=[];
i1=1;
i2=1;
for i=1:N
  if vector(i)<clasificador
    clase1(i1++)=i;
  elseif vector(i) > clasificador
    clase2(i2++)=i;
  else
    #Lanzamiento de la moneda 0:cara 1:sello
     if randi([0 1])==0
       clase1(i1++)=i;
     else
       clase2(i2++)=i;
     endif
  endif
endfor
#clase1=vector<clasificador;
#clase2=vector>clasificador;
#Calculo del Error.
error=(sum(clase1>n)+sum(clase2<n))/N
disp(strcat('Error para clasificador = 5.1756 :',num2str(error)));
#
hold off
endfunction



