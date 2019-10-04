g<-c(5,29,34,44,45,63,68,74,74,81,88,91,97,98,113,118,151,158)
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
