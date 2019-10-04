#Example  :  2   Chapter :  2.3   pageno : 58
#Purpose of Elimination matrices
I<-matrix(c(1,0,0,0,1,0,0,0,1),ncol=3)
E31<-matrix(c(1,0,-4,0,1,0,0,0,1),ncol=3)
b<-matrix(c(1,3,9),ncol=1)
Ib<-I%*%b
print(Ib)
Eb<-E31%*%b
print(Eb)
