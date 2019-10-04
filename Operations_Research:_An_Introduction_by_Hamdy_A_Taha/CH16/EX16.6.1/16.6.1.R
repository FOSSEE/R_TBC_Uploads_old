##Chapter 16 : Queuing Systems
##Example 6-1 : Page 642

#Function to calculate p0
P0<-function(n,servers,temp){
  x=1
  for(i in 1:n){
    if (i<6){
     x=x+(temp^i)/factorial(i) 
    }else{
      x=x+(temp^i)/(factorial(servers)*servers^(i-servers))
    }
  }
  return(1/x)
}
p0=P0(8,5,3)
p0

#calculate Pn 
temp=3
servers=5
A=matrix(0,2,8)
for(i in 1:8){
  if (i<6){
    A[1,i]=i
    A[2,i]=p0*(3^i)/factorial(i) 
  }else{
    A[1,i]=i
    A[2,i]=p0*(temp^i)/(factorial(servers)*servers^(i-servers))
  }
}
A
#arrival rate
lambda=6
#arrivals lost
lambdalost=lambda*A[2,8]
lambdalost
#effective arrivals
lamdaeff=lambda-lambdalost
lamdaeff
#average lengths in the systems
Ls=0*p0+sum(1:8*A[2,])
Ls
#waiting time in the systems
Ws=Ls/lamdaeff
Ws
#average lengths in the queue
Wq=Ws-1/2
Wq
#average number of occupied spaces
cbar=lamdaeff/2
cbar
#parking lot utilization
utilization=cbar/servers
utilization