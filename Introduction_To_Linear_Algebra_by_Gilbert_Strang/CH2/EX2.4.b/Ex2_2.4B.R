#Example : 2.4B         Chapter:2.4       Pageno  : 74

B<-matrix(c(1,0,1,1),ncol=2)
C<-matrix(c(0,0,1,0),ncol=2)
BC<-B%*%C
CB<-C%*%B
print(BC)
print(CB)
print("Commutative property does not hold for matrix multiplication but by chance here it happened BC=CB")