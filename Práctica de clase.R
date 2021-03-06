#Asignaci�n de variables
  c<-"Hola"
  x <- 1:20
  y <- 3:9
  z<- 99:43
  a <- 15.6 
#El operador ":" me permite generar secuencias num�ricas que s�lo son n�meros enteros
  w <- 3:14.5
#Inf es infinito
  exp(-Inf)
#R nos permite trabajar con conceptos matem�ticos "superiores" como los n�meros complejos
#Es posible crear un vector con la funci�n c()
  #Clases de vectores
    x<-c(TRUE,FALSE,TRUE,TRUE,F,F,T) #logical
    x<-c(1L,3L,5L,-4L)#Integer
    x<-c(1,3,5,-4)#Numeric
    x<-c(1+1i,3+4i,5-6i)#complejo
#Vectores vac�os
  b<-vector("numeric",length = 10)
#Jerarqu�a de clases (coerci�n)
  c(T,1L,2) #Numeric
  c(1+1i,TRUE,2) #Complex
#Coerci�n forzada
  as.numeric(w)
  as.character(w)
  as.numeric(c) #No es posible realizar la coerci�n
#Para crear una lista de objetos, se usa la funci�n list
  #En una lista se conservan las clases de sus elementos
    x<-list(1,"a",1+4i,T,1:5)
#Para crear una matriz, se usa la funci�n matrix la cual tiene como caracter�stica que todos sus elementos deben ser de una misma clase.
  m<-matrix(nrow = 2,ncol = 3)
  m<-matrix(c(1,2,3,1+2i,T,8),2,3)
#Una manera de crear una matriz es tomar un vector y modificar sus dimensiones 
  r<-1:20
  dim(r)<-c(4,5)
#Otra forma de crear una matriz es uniendo diferentes vectores
  x<-1:3
  y<-10:12
  #La funci�n cbind une por columnas los vectores
    cbind(x,y)
  #La funci�n rbind une por filas
    rbind(x,y)
#Factores
  x<-factor(c("si","si","no","no"))
  #Los niveles se ordenan alfab�ticamente y para mostrar sus cantidades se usa la funci�n table(x)
  table(x)
  #Para identificar los niveles de cada entrada, se usa la funci�n unclass()
  unclass(x)
#Para identificar los valores faltantes dentro de un vector se usa is.na()
  x<-c(1,2,NA, 10,3)
  is.na(x)
#Identificamos los valores no n�mericos que no son faltantes con 
  is.nan(x)
#Para almacenar datos ordendados dentro de un cuadro usamos 
  x<-data.frame(foo=1:4,bar=c(T,T,F,F))
#Es posible asignar nombres a los elementos de un vector mediante la funci�n names
  x<-1:3
  names(x)<-c("foo","bar","norf")
#Lectura y escritura de datos 
#1.-Creo el objeto
  y<-data.frame(a=1,b="a")
#2.-Estudio la manera en la que se guardar�
  dput(y)
#3.-Lo guardo en mi disco duro
  dput(y,file = "~/y.R")
# 4. Genero un nuevo objeto a partir de la info guardada
  y2 <- dget(file="~/y.R")
#Dump y Source
  #Guarda info en un archivo 
    dump(c("x","c"),file = "data.r")
  #Corre el c�digo de un archivo
    source("data.r")
#Conexiones file, gzip, url
  conexion<-url("https://www.fcfm.buap.mx/")
  x<-readLines(conexion)
  x[7]<-"\t<title>FCFM </title>"
  writeLines(x,"FCFM.html")
#Subconjuntos
  #[]Regresa un objeto de la misma clase del original
  #[[]]Regresa un obeto con su misma clase
  #$ Se usa para extraer elemenetos de una lista por nombre
  #Creamos un vector
    x<-c("a","b","c","c","d","e")
  #Extraemos elementos con []
    x[1]
  #Tambi�n podemos extraer una secuencia de elementos
    x[1:3]
  #Es posible extraer los elementos que cumplen una restricci�n
    x[x>"b"]
  #De manera equivalente se puede tener un vector l�gico
    u<-x=="c"
    x[u]
  #Creamos una lista y extraemos de ambas formas
    x<-list(foo=1:4,bar=0.6)
    x[1]    
    x[[1]]    
    x$foo
  #Para extraer elementos no consecutivos
    x[c(1,2)]
  #Anidar subconjuntos de listas
    x<-list(a=list(10,12,14),b=list(3.14,2.81))
    x[[c(1,3)]]    
    x<-matrix(1:6,2,3)
    x[1,2]
    x[1,2,drop=FALSE]
    x[1:2,1:2 ,drop=FALSE]
    mtcars$mpg[15]/mtcars$cyl[15]
    