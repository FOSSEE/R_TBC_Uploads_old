C <- matrix(c(-2,4,6,2,4,1),2,3)
D <- matrix(c(3,9,7,2,5,1,4,-2,8),3,3)
E <- matrix(c(4,8,1,-1,6,-6,0,4,7),3,3)
# C+D cannot be computed because of different dimensions.

x=D+E
y=D-E
z=C%*%D
p=t(E)
x
y
z
p