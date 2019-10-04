#Chapter 7 - Symmetric Matrices And Quadratic Forms
#Symmetric Matrices
#Page No.222 / 7-2
#Prob 1
#7.1.1

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

print('To check if the given 2X2 matrix is symmetric')

#Declaration of matrix
a = matrix(
  c(3,5,5,-7),
  nrow = 2,
  ncol = 2,
  byrow = TRUE)

print('A=')
print(a)

#Check for symmetry
if(a[1,2]==a[2,1]){
  print('A is a symmetric matrix because the (1,2) and(2,1) entries match.')
}else{
  print('A is not a symmetric matrix')
}