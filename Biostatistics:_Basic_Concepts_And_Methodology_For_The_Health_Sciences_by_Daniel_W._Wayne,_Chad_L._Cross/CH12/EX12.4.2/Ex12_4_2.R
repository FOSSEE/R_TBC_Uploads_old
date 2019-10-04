##Example 12.4.2 Pg.626
##Test for independence

x<-matrix(c(131,52,14,36),nrow=2,byrow=T)
x
rownames(x)<-c("Fallers","Non fallers")
colnames(x)<-c("Yes","No")
print(x)

chisq.test(x)

#pvalue < 0.05 , hence there is relationship between experiencing a fall and change in lifestyle



