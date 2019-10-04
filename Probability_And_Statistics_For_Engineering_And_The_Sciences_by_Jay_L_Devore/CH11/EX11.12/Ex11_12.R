#Ex11.12, Page 452

Age<-rep(c("1","2"),each=2,4)
Temp<-rep(c("1","2"),8)
Soil<-rep(c("1","2"),each=8)
Comp_Stre<-c(471,485,712,712,413,552,637,789,385,530,770,741,434,593,705,806)
df1<-data.frame(Age,Temp,Soil,Comp_Stre)

#To compute cell totals
s1<-s2<-s3<-s4<-s5<-s6<-s7<-s8<-c(NULL)
for(i in 1:length(Comp_Stre)){
  if(df1$Age[i]=="1" && df1$Temp[i]=="1" && df1$Soil[i]=="1"){
    s1[i]<-df1$Comp_Stre[i]
    x111<-sum(s1,na.rm=TRUE)
  }
  else if(df1$Age[i]=="1" && df1$Temp[i]=="2" && df1$Soil[i]=="1"){
    s2[i]<-df1$Comp_Stre[i]
    x121<-sum(s2,na.rm=TRUE)
  }
  else if(df1$Age[i]=="1" && df1$Temp[i]=="1" && df1$Soil[i]=="2"){
    s3[i]<-df1$Comp_Stre[i]
    x112<-sum(s3,na.rm=TRUE)
  }
  else if(df1$Age[i]=="2" && df1$Temp[i]=="1" && df1$Soil[i]=="1"){
    s4[i]<-df1$Comp_Stre[i]
    x211<-sum(s4,na.rm=TRUE)
  }
  else if(df1$Age[i]=="2" && df1$Temp[i]=="1" && df1$Soil[i]=="2"){
    s5[i]<-df1$Comp_Stre[i]
    x212<-sum(s5,na.rm=TRUE)
  }
  else if(df1$Age[i]=="1" && df1$Temp[i]=="2" && df1$Soil[i]=="2"){
    s6[i]<-df1$Comp_Stre[i]
    x122<-sum(s6,na.rm=TRUE)
  }
  else if(df1$Age[i]=="2" && df1$Temp[i]=="2" && df1$Soil[i]=="1"){
    s7[i]<-df1$Comp_Stre[i]
    x221<-sum(s7,na.rm=TRUE)
  }
  else if(df1$Age[i]=="2" && df1$Temp[i]=="2" && df1$Soil[i]=="2"){
    s8[i]<-df1$Comp_Stre[i]
    x222<-sum(s8,na.rm=TRUE)
  }
  
}
#Parameters of the model
n<-2
alpha1_cap<-(x111+x121+x112+x122-x211-x212-x221-x222)/(8*n)
alpha2_cap<-(-1)*alpha1_cap

gamma11_cap<-(x111-x121-x211+x221+x112-x122-x212+x222)/(8*n)
gamma12_cap<-(-1)*gamma11_cap
gamma21_cap<-(-1)*gamma11_cap
gamma22_cap<-gamma11_cap

print(paste("alpha1_cap:",alpha1_cap))
print(paste("alpha2_cap:",alpha2_cap))
print(paste("gamma11_cap:",gamma11_cap))
print(paste("gamma12_cap:",gamma12_cap))
print(paste("gamma21_cap:",gamma21_cap))
print(paste("gamma22_cap:",gamma22_cap))
