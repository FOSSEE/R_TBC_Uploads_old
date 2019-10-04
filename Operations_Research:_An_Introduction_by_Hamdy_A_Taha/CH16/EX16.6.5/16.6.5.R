##Chapter 16 : Queuing Systems
##Example 6-5 : Page 653

#Queueing library to process different queueing models
library(queueing)

#creating a MMc instance with the following parameters
x=NewInput.MMC(lambda=8, mu=5,c=2)
#Solving the model which returns a list
y=QueueingModel(x)
summary(y)

#creating a MMc instance with the following parameters
x=NewInput.MMC(lambda=16, mu=5,c=4)
#Solving the model which returns a list
y=QueueingModel(x)
summary(y)