##Chapter 8 : Heuristic Programming
##Example 2-2 : Page 383

##Initializing function F, Random number R,current index and index
F=c(90,60,50,80,100,40,20,70)
R=0.1002
count=0
current=ceiling(R*8)
index<-ceiling(runif(1,min = 0,max = 8))
#while count < 3,keep looping
while (count<3){
  
  count=count+1
  if(F[index]<F[current]){
    #set current to index and a new random value is alloted to index
    current=index
    index<-ceiling(runif(1,min = 0,max = 8))
    #count is set to 0 when another index lesser than current is found
    count=0
  }
}
current
F[current]