 #Funciones de ciclos
lapply(list, function)#aplica una función a un arreglo de números
sapply(list, function)#aplica una función a una tabla pero intenta simplificar 
  #los resultados
apply(array, margin, ...)# aplica una función dentro de los márgenes de un 
  #arreglo.
tapply(vector, index, function)#aplica una función sobre los subconjuntos de 
  #un vector
mapply(function, ...)#versión multivariable de lapply (aplicación a matrices)
x<-list(a=1:5,b=rnorm(10000))
lapply(x,mean)
x<-list(a=1:5,b=rnorm(10),c=rnorm(10,1),d=rnorm(10,2))
lapply(x,mean)
x<-1:4
lapply(x, runif)
x<-list(a=1:5,b=rnorm(10),c=rnorm(10,3),d=rnorm(10,5))
sapply(x,mean)
x<-matrix(rnorm(200),20,10)
apply(x, 2, mean)
apply(x, 1, quantile,probs=c(.25,.75))
a<-array(rnorm(2*2*10),c(2,2,10))
apply(a, 1,mean)
#Atajos 
rowSums()=apply(x,1,sum)
rowMeans()=apply(x, 1, mean)
