# Example : 2   Chapter : 6.2     Page No: 300
# The diagonal matrix of any matrix contains the eigen values in its main diagonal
A<-matrix(c(0.8,0.2,0.3,0.7),ncol=2)
lambda<-eigen(A)$values
print(lambda)
S<-eigen(A)$vectors #Normlised eigen vectors, Answer can also be validated with normalised eigen vectors
#to get eigen vector matrix in text book
S[,1]<-S[,1]*(0.6/S[1,1])
S[,2]<-S[,2]*(1/S[1,2])
S1<-solve(S)
Diag_matrix<-diag(2)*lambda
print("S*diag_matrix(A)*S-1 is A")
print(S%*%Diag_matrix%*%S1)
#The  answer may slightly vary due to  rounding off values
#The answers provided in the text book may vary because of the computation process
#Both answers are correct , here it is taken -Ax+b=0 , In the text book it is considered as Ax-b=0