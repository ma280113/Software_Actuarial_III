#Asignación de variables
  c<-"Hola"
  x <- 1:20
  y <- 3:9
  z<- 99:43
  a <- 15.6 
#El operador ":" me permite generar secuencias numéricas que sólo son números enteros
  w <- 3:14.5
#Inf es infinito
  exp(-Inf)
#R nos permite trabajar con conceptos matemáticos "superiores" como los números complejos
#Es posible crear un vector con la función c()
  #Clases de vectores
    x<-c(TRUE,FALSE,TRUE,TRUE,F,F,T) #logical
    x<-c(1L,3L,5L,-4L)#Integer
    x<-c(1,3,5,-4)#Numeric
    x<-c(1+1i,3+4i,5-6i)#complejo
#Vectores vacíos
  b<-vector("numeric",length = 10)
#Jerarquía de clases (coerción)
  c(T,1L,2) #Numeric
  c(1+1i,TRUE,2) #Complex
#Coerción forzada
  as.numeric(w)
  as.character(w)
  as.numeric(c) #No es posible realizar la coerción