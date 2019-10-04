# Example : 4.2A   Chapter : 4.2     Page No: 213
# Projection onto the line and onto the plane

projection_line<-function(a,b){
  p<-((sum(a*b))/(sum(a*a)))*a
  e<-b-p
  print("The projection vector is ")
  print(p)
  print("The error vector is ")
  print(e)
}

projection_plane<-function(A,b){
  b<-matrix(c(b),ncol=1)
  ATA<-t(A)%*%A
  ATA1<-solve(ATA)
  P<-A%*%ATA1
  P<-P%*%t(A)
  p<-P%*%b
  e<-b-p
  print("The projection vector is ")
  print(p)
  print("The error vector is ")
  print(e)
}

b<-c(3,4,4)
a<-c(2,2,1)
projection_line(a,b)
A<-matrix(c(a,1,0,0),ncol=2)
projection_plane(A,b)
#The  answer may slightly vary due to  rounding off values