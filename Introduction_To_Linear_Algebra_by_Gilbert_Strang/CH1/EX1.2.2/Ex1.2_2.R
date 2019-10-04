#Example : 2    Chapter : 1.2    pgno:-11

#Computing the dotproduct of two vectors
dotproduct<-function(x,y){
  dp<-sum(x*y)
  return(dp)
}
weight<-matrix(c(4,2),nrow=2,ncol=1,byrow = T)
distance<-matrix(c(-1,2),nrow=2,ncol=1,byrow=T)
center_point<-dotproduct(weight,distance)
center_point