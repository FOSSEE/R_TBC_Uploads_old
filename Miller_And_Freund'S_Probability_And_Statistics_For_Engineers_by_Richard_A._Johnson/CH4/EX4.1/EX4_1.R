#Checking for probability distribution(PD)
#a)
probability <- function(f) {
  print(f)
  i=1;flag=FALSE
  while (i<length(x)){
    if(f[i]<0){
      flag=FALSE
      print("Nagative value is ",f[i])
      break
      
    }
    else{ flag=TRUE}
    i=i+1
  }
  if(flag==TRUE && sum(f)==1){
   return("it is PD") 
  }
  else{
    return("it is not PD") 
  }
} 
x=seq(1,4,by=1)
f=(x-2)/2
print(probability(f))
y=seq(0,4,by=1)
g=(x**2/25)
print(probability(g))







