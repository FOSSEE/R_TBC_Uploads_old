#Calculate estimated variances var(b0) and var(b1)
#With refering to previous example 
Inverse=matrix(c(0.6,-0.2,-0.2,0.1),ncol =2,byrow = TRUE)
Ssquar=2
var=Inverse*Ssquar
print("The  estimated variances is")
var
varb0=var[1,1]
varb1=var[2,2]
print("The var(b0) is")
varb0
print("The var(b1) is")
varb1
