#Chapter 3- Determinants
#Determinant of a matrix
#Page No.110 / 3-4
#Prob 41
#3.1.41

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

av<-c(3,1,0,2)
a=matrix(av,2,2,TRUE)
print(a)
print('det=')
print(det(a))