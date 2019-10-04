##Example 12.5.1 Pg.631
##Test for homogeneity

x<-matrix(c(21,75,19,77),nrow=2,byrow=T)
x
rownames(x)<-c("Narcoleptic","Controls")
colnames(x)<-c("Yes","No")
print(x)

chisq.test(x)

#pvalue > 0.05 , hence two populations may be homogenous wrt migraine frequency
#Answer is slightly differing from the textbook



