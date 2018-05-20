dir<-"D:/Documentos/Personal/Licenciatura/Actuaría/Desarrollo de software actuarial 3/Software_Actuarial_III/specdata"
obtenerdirectorio<-function(directorio,id){
  
  if(id<=9){
    cero<-"00"
  } else if(id>=10 && id<=99){
    cero<-"0"
  } else cero<-""
  
  read.csv(file = paste(directorio,"/",cero,id,".csv",sep = ""))
}

mediacontaminante<-function(directorio,contaminante,id){
  
  x<-obtenerdirectorio(directorio,id[1])
  id<-id[-1]
  for (i in id) {
    x<-rbind(x,obtenerdirectorio(directorio,i))
  }
  x<-x[[contaminante]]
  x<-x[!is.na(x)]
  mean(x)
}


