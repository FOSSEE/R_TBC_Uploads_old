g<-c(81,148,152,135,151,152,159,142,34,162,130,162,163,143,67,112,70)
#since the formula for skewness in the inbuilt is not the same as in textbook, using manual methods
sk=3*(mean(g)-median(g))/sd(g)
l<-paste("Skewness is",round(sk,3))
l
iqr<-IQR(g,type = 2)
q1<-quantile(g,0.25,type = 2)
q3<-quantile(g,0.75, type = 2)
r1=q1-(1.5*iqr)
r2=q3+(1.5*iqr)
if(max(g)>r2){lb<-paste(max(g),"is a outliner");
lb}else{print("no outliner")}
