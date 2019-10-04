
##Example 12.4.1 Pg.621
##Test for independence

x<-matrix(c(260,299,15,41,7,14),nrow=3,byrow=T)
x
rownames(x)<-c("White","Black","Other")
colnames(x)<-c("Yes","No")
print(x)

chisq.test(x)

#pvalue < 0.05 , hence there is relationship between race and folic acid



