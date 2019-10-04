# Example : 4   Chapter : 4.4     Page No: 233
# Projections of the vector onto line,plane if basis are given as orthonormal vectors
Q<-matrix(c(-1,2,2,2,-1,2,2,2,-1),ncol=3)
Q<-(1/3)*Q
q1<-Q[,1]
q2<-Q[,2]
q3<-Q[,3]
b<-c(0,0,1)
p1<-sum(q1*b)*q1
p2<-sum(q2*b)*q2
p3<-sum(q3*b)*q3
print("Projection of b onto q1")
print(p1)
print("Projection of b onto q2")
print(p2)
print("Projection of b onto q3")
print(p3)
print("Projection of b onto plane of q1 and q2")
print(p1+p2)
print("Projection of b onto space of q1,q2, and q3")
print(p1+p2+p3) # same as vector b
