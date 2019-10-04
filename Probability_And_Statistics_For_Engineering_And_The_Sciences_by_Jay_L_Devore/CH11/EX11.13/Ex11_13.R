#Ex11.13, Page 453
#Answers may vary slightly due to rounding off of values

Age<-factor(rep(c("1","2"),each=2,4))
Temp<-factor(rep(c("1","2"),8))
Soil<-factor(rep(c("1","2"),each=8))
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

Effect_contrasts<-c(NULL)
#To compute effect contrasts
for(j in 1:7){
  if(j==1){
    Effect_contrasts[j]=-x111+x211-x121+x221-x112+x212-x122+x222
  }
  else if(j==2){
    Effect_contrasts[j]=-x111-x211+x121+x221-x112-x212+x122+x222
  }
  else if(j==3){
    Effect_contrasts[j]=x111-x211-x121+x221+x112-x212-x122+x222
  }
  else if(j==4){
    Effect_contrasts[j]=-x111-x211-x121-x221+x112+x212+x122+x222
  }
  else if(j==5){
    Effect_contrasts[j]=x111-x211+x121-x221-x112+x212-x122+x222
  }
  else if(j==6){
    Effect_contrasts[j]=x111+x211-x121-x221-x112-x212+x122+x222
  }
  else if(j==7){
    Effect_contrasts[j]=-x111+x211+x121-x221+x112-x212-x122+x222
  }
}

SS<-(Effect_contrasts^2)/(8*n)
df2<-data.frame(Effect_contrasts,SS)
cat("\nEffect contrast and SS values:\n")
print(df2)
SSsum<-sum(SS)

#To find sum of squares value
x2_ijkl<-0
X2<-0
for(k in 1:length(Comp_Stre)){
  x2_ijkl<-x2_ijkl+(Comp_Stre[k]^2)
}
x2<-(x111+x112+x211+x121+x212+x221+x122+x222)^2/16
print(paste("Sum of square of data:",x2_ijkl))
print(paste("x...^2/16:",x2))

#To find SST value
SST<-x2_ijkl-x2
print(paste("SST:",SST))

#To find SSE value
SSE<-SST-SSsum
print(paste("SSE:",SSE))

#To display corresponding ANOVA tables
model1<-lm(Comp_Stre~Age:Temp:Soil)
model2<-lm(Comp_Stre~Age*Temp*Soil)
a<-aov(model1,data=df1)
b<-aov(model2,data=df1)
print(summary(a))
print(summary(b))
