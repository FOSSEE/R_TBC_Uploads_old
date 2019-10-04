#Example 14 Chapter 2
rm(list = ls())

Fx<-function(x){
  y=c()
  for (i in (1:length(x))){
    if(x[i]<=0){y[i]=0}
    else if(x[i]>=1){y[i]=1}
    else {y[i]=x[i]}
  }  
  return(y)
}
fx<-function(x){
  y=c()
  for (i in (1:length(x))){
    if(x[i]<=0){y[i]=0}
    else if(x[i]>=1){y[i]=0}
    else {y[i]=1}
  }  
  return(y)
}
plot(Fx,-2, 2)   #distribution function 
plot(fx,-2, 2)   #probability density function

