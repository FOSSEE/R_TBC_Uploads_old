B <- matrix(c(7,9,3,5),2,2)
C <- matrix(c(3,2,3,2,8,1,4,-2,8),3,3)
determinant_B=det(B)
determinant_C=det(C)
determinant_B
determinant_C
solve(B)
solve(C)
# B* inverse B
x=zapsmall(solve(B)%*%B)
x
# C* inverse C
y=zapsmall(solve(C)%*%C)
y
