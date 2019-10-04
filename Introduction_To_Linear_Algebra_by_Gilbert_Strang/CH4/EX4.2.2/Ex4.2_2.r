# Example : 2   Chapter : 4.2     Page No: 209
# Find the projection matrix onto the line

projection_matrix<-function(a){
  a<-matrix(c(a),ncol=1)
  P<-a%*%t(a)
  temp<-t(a)%*%a
  temp<-1/temp
  t<-temp[1,1]
  P<-t*P
  return(P)
}
a<-c(1,2,2)
P<-projection_matrix(a)
print("The projection matrix is ")
print(P)
#The  answer may slightly vary due to  rounding off values