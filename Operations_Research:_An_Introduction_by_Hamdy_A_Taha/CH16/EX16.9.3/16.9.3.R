##Chapter 16 : Queuing Systems
##Example 9-3 : Page 672

#Queueing library to process different queueing models
library(queueing)
Ws=numeric()
RO=numeric()


for (c in 2:8){
  #creating a MMc instance with the following parameters
  y=NewInput.MMC(lambda=17.5, mu=10,c)
  #Solving the model which returns a list
  z=QueueingModel(y)
  #waiting time in the system
  Ws[c]=z$W*60
  #idleness percentage of the system
  RO[c]=(1-z$RO)*100
}
rbind(Ws,RO)[,2:8]