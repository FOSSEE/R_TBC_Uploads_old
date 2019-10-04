#Example : 1    Chapter : 1.2     pgno:-11

#Computing the dotproduct of two vectors
dotproduct<-function(x,y){
  res<-0
  for(i in 1:length(x)){
    res<-res+x[i]*y[i]
  }
  res
}
v<-matrix(c(4,2),nrow=2,ncol=1,byrow = T)
w<-matrix(c(-1,2),nrow=2,ncol=1,byrow=T)
r<-dotproduct(v,w)
print(paste("Dot product of given vectors is",r))
