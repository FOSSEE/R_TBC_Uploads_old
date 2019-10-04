##Chapter 8 : Heuristic Programming
##Example 2-1 : Page 382

##Initializing function F, Random number R and index
F=c(90,60,50,80,100,40,20,70)
R=0.1002
index=ceiling(R*8)
#while any of neighbouring values are lower,keep looping
while (F[index]>=F[index+1] | F[index]>=F[ifelse(index==1,1,index-1)]){
  #if the next index is less than the current index
  if(F[index+1]<F[index]){
    index=index+1
  }
  #if the previous index is less than the current index
  if(F[index-1]<F[index]){
    index=index+1
  }
}
index
F[index]