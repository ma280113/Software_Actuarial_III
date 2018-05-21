dir<-"D:/Documentos/Personal/Licenciatura/Actuaría/Desarrollo de software actuarial 3/Software_Actuarial_III/calidadHospitales"
setwd(dir)
rankhospital<-function(estado,resultado,num="mejor"){
  outcome<-read.csv("outcome-of-care-measures.csv", colClasses = "character")
  options(warn=-1)
  outcome[,11]<-as.numeric(outcome[,11])
  outcome[,17]<-as.numeric(outcome[,17])
  outcome[,23]<-as.numeric(outcome[,23])
  options(warn=0)
  if (sum(outcome$State==estado)==0){
    stop("Estado invalido")
  } else {
    dat<-outcome[outcome$State==estado,]
    Nombre<-dat[,2]
    Ataque<-dat[,11]
    Falla<-dat[,17]
    Neumo<-dat[,23]
  }
  
  if (resultado=="ataque") {
    dat<-data.frame(Nombre,Ataque)
    dat<-dat[order(dat$Ataque,dat$Nombre),]
    dat<-dat[!is.na(dat$Ataque),]
  } else if(resultado=="neumonia") {
    dat<-data.frame(Nombre,Neumo)
    dat<-dat[order(dat$Neumo,dat$Nombre),]
    dat<-dat[!is.na(dat$Neumo),]
  } else if(resultado=="falla"){
    dat<-data.frame(Nombre,Falla)
    dat<-dat[order(dat$Falla,dat$Nombre),]
    dat<-dat[!is.na(dat$Falla),]
  } else {
    stop("Resultado invalido")
  }
  
  
  if(num=="mejor"){
    res<-dat[1,1]
  } else if (num=="peor"){
    res<-dat[nrow(dat),1]
  } else {
    res<-dat[num,1]
  }
  as.character(res)
}
}
