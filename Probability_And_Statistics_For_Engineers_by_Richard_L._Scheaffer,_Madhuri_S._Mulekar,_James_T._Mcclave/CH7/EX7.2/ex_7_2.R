
# Joint Probability Distribution
# a
library(MASS)
# formula for Joint Probability Distribution

a <- function(x,y)
{
  if(x+y <= 2)
  {
    if(x==1 || y==1)
    {
     ans = ( 2 * (1/3) * (1/3))
      
    }
    else{
      ans = ((1/3) * (1/3))
    }
  }
  
  else{
    ans = (0)
  }
}

for(i in 0:2){
  for(j in 0:2)
  {
    cat("p(", i,",",j,") =")
    print(fractions(a(i,j)))
  }
    
}

# b
#  the probability that one of the customers visits counter B given that one of the customers is known to have 
# visited counter A. 
cat("P(X2 =1 | X1 =1) =", a(1,1)/(a(1,0) + a(1,1) + a(1,2)))
  