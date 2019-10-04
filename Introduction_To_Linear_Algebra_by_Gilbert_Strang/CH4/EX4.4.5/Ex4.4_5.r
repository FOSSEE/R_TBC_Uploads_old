# Example : 5   Chapter : 4.4     Page No: 233
# Gram-Schmidt method to convert matrix into its orthogonal form
magnitude<-function(a){
  x<-0
  for(i in 1:length(a)){
    x<-x+a[i]*a[i]
  }
  x<-sqrt(x)
  return(x)
}
a<-c(1,-1,0)
b<-c(2,0,-2)
c<-c(3,-3,3)
A<-a
B<-b-(sum(A*b)/sum(A*A))*A 
C<-c-(sum(A*c)/sum(A*A))*A-(sum(B*c)/sum(B*B))*B
print("Orthogonal vectors corresponding to a,b,c are")
print(A)
print(B)
print(C)
q1<-(1/magnitude(A))*A
q2<-(1/magnitude(B))*B
q3<-(1/magnitude(C))*C
Q<-matrix(c(q1,q2,q3),ncol=3)
print("Orthogonal matrix with orthonormal vectors of a,b,c ")
print(Q)
#The  answer may slightly vary due to  rounding off values