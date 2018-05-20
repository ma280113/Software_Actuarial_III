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
#Errores:
  #message: una notificación que se produce sin detener el código
log(-1)
  #warning: Un error pero no fatal y el código sigue corriendo
imprimeMSJ<-function(x){
  if(is.na(x))                         #estas dos lineas liberan a la función 
      print("x es un valor faltante")  #del error.
  else if(x>0)
      print("x es mayor que 0")
  else
      print("x es menor o igual a 0")
  invisible(x)
}
imprimeMSJ(1)
imprimeMSJ(NA)
  #error: un aviso de un error fatal, el código se detiene
  #Condition: un concepto genérico para indicar que algo inesperado puede
  #|ocurrir, se puede creear una propia condición.
#Herramientas para depurar
traceback(imprimeMSJ(NA))#imprime la función que se está ejecutando
debug()#marca la función para correrla paso a paso
browser()#suspende la ejecución de una función y pone la función en depuración
#.
#.
#.
#Funciones para distribuciones de probbilidad en R
rnorm
dnorm
pnorm
rpois