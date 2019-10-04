##Example 12.6.1 Pg.638
##Fishers exact test

x<-matrix(c(9,2,12,8),nrow=2,byrow=T)
x
rownames(x)<-c("Naive","Experienced")
colnames(x)<-c("Yes","No")
print(x)

fisher.test(x)

#pvalue > 0.05 , hence rate of remaining on regimen for 120 weeks is same for naive and experienced groups
#Answer is slightly differing from the textbook


