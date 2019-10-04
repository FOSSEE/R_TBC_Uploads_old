#Ex11.5, Page 427
#Answers may vary slightly due to rounding off of values

#To create data frame
Treatment<-rep(c("I","II","III","IV","V"),4)
Block<-rep(c("1","2","3","4"),each=5)
Power<-c(685,722,733,811,828,792,806,802,888,920,838,893,880,952,978,875,953,941,1005,1023)

df1<-data.frame(Treatment,Block,Power)
print(df1)

#To display ANOVA table
a<-aov(Power~Treatment+Block,data=df1)
print(a)
cat("\nSummarized table:\n")
print(summary(a))
