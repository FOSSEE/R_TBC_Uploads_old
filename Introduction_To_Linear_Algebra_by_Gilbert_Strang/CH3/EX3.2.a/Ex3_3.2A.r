# Example : 3.2A   Chapter : 3.2     Page No: 139
# Find the Matrix having the given special solutions
s1<-c(-3,1,0,0)
s2<-c(-2,0,-6,1)
R<-diag(4)
R<-R[-4,] 
#As 1st column is pivot column it is not needed to change
#As 3rd column is next pivot column , row reduced echolon form has 1 in second row of third column
R[,3]<-R[,2]
#Two free columns are modified acording to special solutions
R[,2]<-c(-1*s1[1],0,0)
R[,4]<-c(-1*s2[1],-1*s2[3],0)
print("matrix having given special solutions")
print(R)