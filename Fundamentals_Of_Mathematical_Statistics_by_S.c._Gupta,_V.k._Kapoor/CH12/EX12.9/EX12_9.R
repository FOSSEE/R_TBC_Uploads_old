#Page number--12.33
#Example number--12.9

r12=0.8
r21=0.8
r13=-0.4
r31=-0.4
r23=-0.56
r32=-0.56

w=matrix(c(1,r12,r13,r12,1,r23,r13,r23,1),nrow=3,ncol=3)
det(w)
w11=matrix(c(1,r23,r23,1),nrow=2,ncol=2)
det(w11)
w12=matrix(c(r21,r31,r23,1),nrow=2,ncol=2)
det(w12)*-1
w13=r23*r12-r13
w13

#Required equation
#0.686/4.42*(X1-28.02)-0.576/1.10*(X2-4.91)-0.048/85*(X3-594)