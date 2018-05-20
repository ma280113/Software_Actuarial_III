dir<-"D:/Documentos/Personal/Licenciatura/Actuaría/Desarrollo de software actuarial 3/Software_Actuarial_III/calidadHospitales"
setwd(dir)
mejor<-function(estado,resultado){
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
  }
  if (resultado=="ataque") {
    dat<-dat[order(dat[,11],dat[,2]),]
    res<-dat[which.min(dat[,11]),]
  } else if(resultado=="neumonia") {
    dat<-dat[order(dat[,23],dat[,2),]
    res<-dat[which.min(dat[,23]),]
  } else if(resultado=="falla"){
    dat<-dat[order(dat[,17],dat[,2),]
    res<-dat[which.min(dat[,17]),]
  } else {
    stop("Resultado invalido")
  }
  res$Hospital.Name
}
