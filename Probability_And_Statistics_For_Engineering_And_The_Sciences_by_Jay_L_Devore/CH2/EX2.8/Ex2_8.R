#Ex2.8, Page 53

A<-c(0,1,2,3,4)
B<-c(3,4,5,6)
C<-c(1,3,5)
U<-union(A,B)

cat("A'=",setdiff(U,A),"\n")
cat("A U B =",union(A,B),"\n")
cat("A U C =",union(A,C),"\n")
cat("A n B =",intersect(A,B),"\n")
cat("A n C =",intersect(A,C),"\n")
cat("(A n C)'=",setdiff(U,intersect(A,C)))