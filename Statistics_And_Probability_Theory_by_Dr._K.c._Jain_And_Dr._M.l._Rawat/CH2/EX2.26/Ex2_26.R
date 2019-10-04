#Example 26 Chapter2 page no. 86
P<-function(x){
  a=c(1,2,3,4,5)
  for(i in (1:length(a)))
  {
    if(x==a[i]){return(x/15)}
  }
  return(0)
}
P_X_1_or_2 = P(1)+P(2)
print(P_X_1_or_2)
#prob of x bw 1/2 and 5/2 when given x greater than 1
p = P(2)/(1-P(1))
print(p)
