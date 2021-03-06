 #Funciones de ciclos
lapply(list, function)#aplica una funci�n a un arreglo de n�meros
sapply(list, function)#aplica una funci�n a una tabla pero intenta simplificar 
  #los resultados
apply(array, margin, ...)# aplica una funci�n dentro de los m�rgenes de un 
  #arreglo.
tapply(vector, index, function)#aplica una funci�n sobre los subconjuntos de 
  #un vector
mapply(function, ...)#versi�n multivariable de lapply (aplicaci�n a matrices)
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
  #message: una notificaci�n que se produce sin detener el c�digo
log(-1)
  #warning: Un error pero no fatal y el c�digo sigue corriendo
imprimeMSJ<-function(x){
  if(is.na(x))                         #estas dos lineas liberan a la funci�n 
      print("x es un valor faltante")  #del error.
  else if(x>0)
      print("x es mayor que 0")
  else
      print("x es menor o igual a 0")
  invisible(x)
}
imprimeMSJ(1)
imprimeMSJ(NA)
  #error: un aviso de un error fatal, el c�digo se detiene
  #Condition: un concepto gen�rico para indicar que algo inesperado puede
  #|ocurrir, se puede creear una propia condici�n.
#Herramientas para depurar
traceback(imprimeMSJ(NA))#imprime la funci�n que se est� ejecutando
debug()#marca la funci�n para correrla paso a paso
browser()#suspende la ejecuci�n de una funci�n y pone la funci�n en depuraci�n
#.
#.
#.
#Funciones para distribuciones de probbilidad en R
rnorm
dnorm
pnorm
rpois