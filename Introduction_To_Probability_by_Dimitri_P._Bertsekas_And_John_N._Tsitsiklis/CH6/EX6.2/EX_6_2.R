#EX_6_2
#page 4
library(markovchain)#loading libraries
library(diagram)
matrix<-matrix(NA,nrow=4,ncol=4,byrow=T)#creating the sample matrix
#loop to enter the probabilty in the matrix
for(i in 1:4)
{
  for(j in 1:4)
  {
    if(i==1&&j==1)
    {
      matrix[i,j]<-1
    }else if(i==4&&j==4){
      matrix[i,j]<-1
    }else if(i==j&&i>1){
      matrix[i,j]<-0.4
    }else if(i>=2&&(j==(i-1)||j==(i+1))){
      matrix[i,j]<-0.3
    }else{
      matrix[i,j]<-0
    }
  }
}
matrix#printing the matrix
plotmat(matrix)#markov chain representation of the matrix