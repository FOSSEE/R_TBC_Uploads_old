##Chapter 8 : Heuristic Programming
##Example 2-3 : Page 385

#Function F returns  the value of F for a given x
F <- function(x){return(x**5-10*x**4+35*x**3-50*x**2+24*x)}

#Intial values
x=0.5
newx=5
count=0
#while count<3
while(count<3){
  #generate newx random uniform sampling
  while(newx>4 | newx<0){newx<-x+(runif(1)-0.5)*(4-0)}
  #if the new value is better than the old
  if (F(newx)<F(x)){
    #assign newx as x,newx as 5(so that it enters newx while loop in next iteration) and count to 0
    x=newx
    newx=5
    count=0
  }else{
    #else increment count
    count=count+1
  }
}

print(paste("Optimal using uniform distribution = ",x))

x=0.5
newx=5
count=0
#while count<3
while(count<3){
  #generate newx random uniform sampling
  while(newx>4 | newx<0){newx<-x+(4*rnorm(1)/6)}
  if (F(newx)<F(x)){
    #assign newx as x,newx as 5(so that it enters newx while loop in next iteration) and count to 0
    x=newx
    newx=5
    count=0
  }else{
    #else increment count
    count=count+1
    newx=5
  }
}

print(paste("Optimal using normal distribution = ",x))
