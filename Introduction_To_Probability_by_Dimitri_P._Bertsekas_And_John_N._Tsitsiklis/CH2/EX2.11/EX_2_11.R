#EX_2_11
#page 29
sum<-0
mat<-matrix(c(16/48,12/48,9/48,0,4/48,6/48,0,0,1/48), nrow=3,ncol=3,byrow=T,dimnames= list(c(x=0:2),c(y=0:2)))
mat#the matrix of the joint PMF
x[2]           
mat[1,1]

for(i in 2:3)
{
  for(j in 2:3)
  {
    sum<-sum+mat[i,j]
  }
}
sum# probabilty of atleast one wrong             
              