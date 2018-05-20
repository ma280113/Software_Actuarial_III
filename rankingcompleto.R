dir<-"D:/Documentos/Personal/Licenciatura/Actuaría/Desarrollo de software actuarial 3/Software_Actuarial_III/calidadHospitales"
setwd(dir)
rankingcompleto<-function(resultado,num="mejor"){
  dat<-read.csv("outcome-of-care-measures.csv", colClasses = "character")
  options(warn=-1)
  dat[,11]<-as.numeric(dat[,11])
  dat[,17]<-as.numeric(dat[,17])
  dat[,23]<-as.numeric(dat[,23])
  options(warn=0)
  Hospital<-dat[,2]
  Ataque<-dat[,11]
  Falla<-dat[,17]
  Neumo<-dat[,23]
  Estado<-dat[,7]

  if (resultado=="ataque") {
    r<-data.frame(Hospital,Estado,Ataque)
    r<-r[order(r$Ataque,r$Hospital),]
    r<-r[!is.na(r$Ataque),]
    r<-r[,-3]
  } else if(resultado=="neumonia") {
    r<-data.frame(Hospital,Estado,Neumo)
    r<-r[order(r$Neumo,r$Hospital),]
    r<-r[!is.na(r$Neumo),]
    r<-r[,-3]
  } else if(resultado=="falla"){
    r<-data.frame(Hospital,Estado,Falla)
    r<-r[order(r$Falla,r$Hospital),]
    r<-r[!is.na(r$Falla),]
    r<-r[,-3]
  } else {
    stop("Resultado invalido")
  }
  
  if (num=="mejor"){
    r
  } else if(num=="peor"){
    
  } else {
    r<-r[num:length(Hospital),]
  }
  r
}
