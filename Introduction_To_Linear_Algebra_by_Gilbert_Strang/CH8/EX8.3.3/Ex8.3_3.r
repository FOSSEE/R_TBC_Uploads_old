# Example : 3   Chapter : 8.3     Page No: 433
# Markov matrix Application.
A<-matrix(c(0,0.5,0.5,0.5,0,0.5,0.5,0.5,0),ncol=3)
u0<-c(8,16,32)
u1<-A%*%u0
u2<-A%*%u1
u3<-A%*%u2
print("Populations in three groups in subsequent months")
print(u1)
print(u2)
print(u3)