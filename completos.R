dir<-"D:/Documentos/Personal/Licenciatura/Actuaría/Desarrollo de software actuarial 3/Software_Actuarial_III/specdata"
obtenerdirectorio<-function(directorio,id){
  
  if(id<=9){
    cero<-"00"
  } else if(id>=10 && id<=99){
    cero<-"0"
  } else cero<-""
  
  read.csv(file = paste(directorio,"/",cero,id,".csv",sep = ""))
}

completos<-function(directorio,id){
  nobs<-list()
  for (i in id) {
    x<-obtenerdirectorio(directorio,i)
    x<-x[!is.na(x$nitrate) & !is.na(x$sulfate),]
    nobs<-rbind(nobs,sum(!is.na(x$sulfate)))
  }
  data.frame(id,nobs)
}
