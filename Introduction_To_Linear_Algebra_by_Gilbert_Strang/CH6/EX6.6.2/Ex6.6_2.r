# Example : 2   Chapter : 6.6     Page No: 356
# Similar matrices  with repeated eigen values
A<-matrix(c(0,0,1,0),ncol=2)
Aev<-eigen(A)$values
A1<-matrix(c(1,1,-1,-1),ncol=2)
A1ev<-round(eigen(A1)$values)
print("Both th egiven matrices are similar because their eigen values are same")
print(Aev)
print(A1ev)
#The  answer may slightly vary due to  rounding off values
