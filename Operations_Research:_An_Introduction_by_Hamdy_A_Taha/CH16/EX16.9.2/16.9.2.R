##Chapter 16 : Queuing Systems
##Example 9-2 : Page 670

#Queueing library to process different queueing models
library(queueing)

Ls=numeric()
ETC=numeric()
for (c in 2:6){
  #creating a MMc instance with the following parameters
  y=NewInput.MMC(lambda=17.5, mu=10,c)
  #Solving the model which returns a list
  z=QueueingModel(y)
  Ls[c]=z$L
  ETC[c]=12*c + 50*Ls[c]
}
ETC[2:6]