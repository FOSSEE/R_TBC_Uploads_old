#page no. 121
#problem 18
#given:
# x+y+z = 4
# 2x-2y+4z = 33
#3x-2y-2z = 2

# formula used : matrix multiplication
#                x = A(inverse) * B

A = array(data=c(1,2,3,1,-2,-2,1,4,-2),dim =c(3,3))
B = c(4,33,2)
X = solve(A,B)
cat("x=",X[1]) #value of x

cat("y=",X[2]) #value of y

cat("z=",X[3]) #value of z