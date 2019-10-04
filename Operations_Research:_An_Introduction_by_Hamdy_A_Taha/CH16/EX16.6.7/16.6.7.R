##Chapter 16 : Queuing Systems
##Example 6-7 : Page 660

#Queueing library to process different queueing models
library(queueing)
#creating a MMc instance with the following parameters
x=NewInput.MMInf(lambda=12, mu=0.333)
#Solving the model which returns a list
y=QueueingModel(x)
summary(y)
estimate=(0.25*round(y$L)*1000)*(1-0.2)+(0.75*round(y$L)*1000)*(1+0.12)
estimate
##The answer for the estimate is given wrong in the book