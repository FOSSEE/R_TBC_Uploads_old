# Example : 1   Chapter : 8.3     Page No: 432
# Positive Markov matrix Application.
A<-matrix(c(0.8,0.2,0.05,0.95),ncol=2)
u0<-c(0.02,0.98)
u1<-A%*%u0
print(u1)
u2<-A%*%u1
print(u2)