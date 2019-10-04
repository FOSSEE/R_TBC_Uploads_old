# Example : 3   Chapter : 7.3     Page No: 402
# Polar Decomposition
A<-matrix(c(2,-1,2,1),ncol=2)
Q<-round(svd(A)$u)%*%t(svd(A)$v)
H<-t(Q)%*%A
print("Polar Decomposition A=QH")
print("Q is ")
print(Q)
print("H is ")
print(H)
#The  answer may slightly vary due to  rounding off values
#The answers provided in the text book may vary because of the computation method followed.
