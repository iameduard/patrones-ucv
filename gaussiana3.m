function gaussiana3(n,sigma1,sigma2,corte)
#tarea2:
#Eduardo Jimenez
#Dos distribuciones gaussianas.
#Media de las gaussianas: mu1=3, mu2=8
#Constante o maximo de la gaussianas: max1=4 y max2=6
#La regla de clasificaci�n de Bayes:
#asignar a x la clase para la que su probabilidad a posteriori sea mayor.
#Regla de decisi�n de Bayes:
#Decidir w1 si P(w1 | x) > P(w2| x), y w2 en otro caso.
#
#Cuando P(x|w1) = P(x|w2), x no es capaz de aportar informaci�n sobre su clase cierta y la decisi�n se toma 
#seg�n los valores de p1 y p2. Por otro lado, cuando p1 = p2 la decisi�n se toma en base a los valores de 
#P(x|wj), y en estos casos se habla de la verosimilitud de x respecto a wj y la regla de decisi�n autilizar 
#Es la regla de m�xima verosimilitud: Decidir w1 si P(x|w1 )� > �P(x|w2), y w2 en otro caso.
#
#Para la elecci�n de la clase que minimiza el error, seleccionar ?i si P(?i|X) > P(?j|X) para toda j ? i.
#Un clasificador basado en la Regla de Bayes puede representarse de esta manera. Establecemos que: 
#gi(X) = P(?i| X) 
#De forma que el mayor valor discriminante se alcanza para la clase con mayor probabilidad a posteriori
#Para el caso de un problema de clasificaci�n entre dos clases la formulaci�n se simplifica notablemente. En lugar de calcular dos funciones discriminantes, g1(X) y g2(X) y seleccionar w1 si g1(X) > g2(X), resulta m�s conveniente definir una �nica funci�n discriminante, 
#g(X) = g1(X) - g2(X) y utilizar la siguiente regla de decisi�n: 
#Seleccionar ?1 si g(X) > 0, y ?2 en caso contrario.
#P(error)=1 � P(acierto) 
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
mu1=3;c1=4;
mu2=8;c2=6;
z1=p_x_wi(x,sigma1,mu1,c1);z2=p_x_wi(x,sigma2,mu2,c2);
hold on;
plot(x,z1);plot(x,z2);
#Data de prueba..
clasificador=corte;
eps1=0.5;
cont=0;
norm1=[];
norm2=[];
for i=1:10000
  n1=normrnd(mu1,sigma1);
  if ((n1>clasificador-eps1) && (n1< clasificador+eps1))
    cont+=1;
    norm1=[norm1, n1];
  endif
  if (cont>=n)
     break
  endif
endfor
cont=0;
for i=1:10000
  n2=normrnd(mu2,sigma2);
  if ((n2>clasificador-eps1) && (n2< clasificador+eps1))
    cont+=1;
    norm2=[norm2, n2];
  endif
  if (cont>=n)
     break
  endif
endfor
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

error=clasificar(clasificador,vector,n);
disp(strcat('Error para frontera de clasificacion x=',num2str(clasificador),' : ',num2str(error)));
plot(clasificador*ones(1,100),linspace(0,6,100),strcat(';e= ',num2str(error),';'));
#strcat(';Error fc x=5.1756 ',num2str(error),';')

#
clasificador1=clasificador+eps1;
error=clasificar(clasificador1,vector,n);
disp(strcat('Error para frontera de clasificacion x=',num2str(clasificador1),' : ',num2str(error)));
plot(clasificador1*ones(1,100),linspace(0,6,100),strcat(';e= ',num2str(error),';'));

clasificador2=clasificador-eps1;
error=clasificar(clasificador2,vector,n);
disp(strcat('Error para frontera de clasificacion x=',num2str(clasificador2),' : ',num2str(error)));
plot(clasificador2*ones(1,100),linspace(0,6,100),strcat(';e= ',num2str(error),';'));

h = legend ("location", "northeast");

hold off;
endfunction



