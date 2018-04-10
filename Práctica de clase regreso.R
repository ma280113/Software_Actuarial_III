#Scoping Rules
lm
lm<-function(x){x*x}
lm
rm(lm)
lm
#Ámbito lexicológico en R
hacer.potencia<-function(n){
  potencia<-function(x){
    x^n
  }
  potencia
}
cubica<-hacer.potencia(3)
cuadrada<-hacer.potencia(2)

cubica(3)

cuadrada(2)

ls(environment(cubica))
get("n", environment(cubica))
ls(environment(cuadrada))
get("n",environment(cuadrada))

y<-10
f<-function(x){
  y<-2
  y^2+g(x)}
g<-function(x){x*y}
f(3)
#Fechas 
x<-as.Date("1995-04-03")
unclass(x)
y<-as.Date("2018-04-02")
y-x
weekdays(as.Date("1995-04-03"))
a<-as.POSIXct("1995-04-03")
b<-as.POSIXlt("1995-04-03")