##Chapter 16 : Queuing Systems
##Example 6-4 : Page 649

#Queueing library to process different queueing models
library(queueing)
#creating a MMK instance with the following parameters
x=NewInput.MM1K(lambda=4, mu=6,k=5)
#Solving the model which returns a list
y=QueueingModel(x)
summary(y)