# Example : 3   Chapter : 6.6     Page No: 357
# Jordans theorem and Jordan Matrix
J<-matrix(c(5,0,0,1,5,0,0,1,5),ncol=3)
Jev<-eigen(J)$values
JT<-t(J)
JTev<-eigen(JT)$values
print("Jordans theorem says that both J and transpose of J are similar")
print(Jev)
print(JTev)