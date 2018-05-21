dir<-"D:/Documentos/Personal/Licenciatura/Actuaría/Desarrollo de software actuarial 3/Software_Actuarial_III/calidadHospitales"
setwd(dir)
rankingcompleto<-function(resultado,num="mejor"){
  dat<-read.csv("outcome-of-care-measures.csv", colClasses = "character")
  options(warn=-1)
  dat[,11]<-as.numeric(dat[,11])
  dat[,17]<-as.numeric(dat[,17])
  dat[,23]<-as.numeric(dat[,23])
  options(warn=0)
  Nombre<-dat[,2]
  Ataque<-dat[,11]
  Falla<-dat[,17]
  Neumo<-dat[,23]
  Estado1<-dat[,7]
  n<-1:length(unique(Estado1))
  
  if(num=="peor"){
    o<-TRUE
    num<-1
  } else if (num=="mejor"){
    num<-1
    o<-FALSE
  } else if(is.numeric(num)==FALSE){
    stop("num invalido")
  } else{
    o<-FALSE
  }
    
  if (resultado=="ataque"){
    a<-data.frame(Nombre,Estado1,Ataque)
    a<-a[order(a$Ataque,a$Nombre,decreasing = o),]
    a<-a[!is.na(a$Ataque),]
  } else if (resultado=="falla"){
    a<-data.frame(Nombre,Estado1,Falla)
    a<-a[order(a$Falla,a$Nombre,decreasing = o),]
    a<-a[!is.na(a$Falla),]
  } else if (resultado=="neumonia"){
    a<-data.frame(Nombre,Estado1,Neumo)
    a<-a[order(a$Neumo,a$Nombre,decreasing = o),]
    a<-a[!is.na(a$Neumo),]
  } else{
    stop("resultado invalido")
  }
  
  b<-split(a,a$Estado1)
  t<-data.frame()
  for (i in n) {
    c<-as.data.frame(b[i])
    Hospital<-as.character(c[num,1])
    Estado<-as.character(c[num,2])
    t<-rbind(t,data.frame(Hospital,Estado))
  }
  t
}
