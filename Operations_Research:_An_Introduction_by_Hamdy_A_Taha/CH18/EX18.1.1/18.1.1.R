##Chapter 18 : Classical Optimization theory
##Example 1-1 : Page 714

#Function to be given as input to optim function
minimize<-function(x){
  x1=x[1]
  x2=x[2]
  x3=x[3]
  return(-(x1+2*x2+x2*x3-x1^2-x2^2-x3^2))
}

#Calculates the optimal value
optim(c(0,0,0),minimize,hessian = T )
#the Jacobian for each
f=expression(x1+2*x2+x2*x3-x1^2-x2^2-x3^2)
for(i in 1:3){
  x=D(f,paste("x",i,sep = ""))
  print(x)
}