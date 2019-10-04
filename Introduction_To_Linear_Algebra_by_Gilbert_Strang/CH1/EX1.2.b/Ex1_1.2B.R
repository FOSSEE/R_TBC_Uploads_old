#Example : 1.2B   Chapter :  1.2    Pageno:-18
v<-c(3,4)
V<-v/sqrt(sum(v*v))
print(paste("The Unit vector in the direction of the given vector is ", V[1]," ",V[2]))
u<-c(-4,3)
if(sum(u*v)==0){
  print("The vectors u and v are perpendicular to each other")
}
U = u/sqrt(sum(u*u))
print(paste("The unit vector in the direction of u is",U[1]," ",U[2]))