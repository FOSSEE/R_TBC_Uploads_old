##Chapter 16 : Queuing Systems
##Example 6-6 : Page 657

#Queueing library to process different queueing models
library(queueing)

#creating a MMc instance with the following parameters
x=NewInput.MMCK(lambda=16, mu=5,c=4,k=10)
#Solving the model which returns a list
y=QueueingModel(x)
summary(y)
