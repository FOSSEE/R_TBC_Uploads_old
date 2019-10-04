#Ex11.10, Page 444
#Answers may vary slightly due to rounding off of values

#To create data frame
A<-rep(c(rep(c("A1","A2","A3","A4"),each=3)),8)
B<-rep(c("B1","B2"),each=48)
C<-rep(c("C1","C2","C3","C4","C1","C2","C3","C4"),each=12)
data<-c(3.6,3.8,3.9,3.8,3.6,4.0,3.7,3.9,4.2,3.6,3.5,3.8,3.4,3.7,3.9,3.8,3.9,3.9,3.8,4.0,3.9,3.6,3.7,3.9,2.9,2.8,2.7,2.9,2.9,2.8,2.9,2.7,2.8,2.6,2.9,2.9,2.5,2.4,2.2,2.4,2.2,2.2,2.1,2.0,1.8,2.0,2.0,1.9,4.2,4.0,3.9,4.4,4.4,4.6,4.2,4.4,4.5,4.0,4.1,4.2,4.4,3.9,4.2,4.2,4.3,4.7,4.0,4.6,4.5,4.0,4.4,4.2,3.6,3.7,3.4,3.8,3.7,3.4,4.0,3.8,3.3,3.8,3.7,3.5,3.0,2.8,2.9,2.0,2.9,2.8,2.0,2.4,2.0,2.0,2.2,2.3)

df1<-data.frame(A,B,C,data)
print(df1)

#To find cell totals for all combinations of the three factors
cat("\nCell totals:\n")
m1<-tapply(df1$data,list(A,B,C),sum)
print(m1)

#To create ANOVA table
a<-aov(data~A+B+C+A:B+A:C+B:C+A:B:C,data=df1)
print(a)
cat("\nSummarized table:\n")
print(summary(a))
