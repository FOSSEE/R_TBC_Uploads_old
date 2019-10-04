##Chapter 16 : Queuing Systems
##Example 6-2 : Page 645

#Queueing library to process different queueing models
library(queueing)
#creating a MM1 instance with the following parameters
x=NewInput.MM1(lambda=4, mu=6,n=25)
#Solving the model which returns a list
y=QueueingModel(x)
#probability of each of the n customers in the system
P=y$Pn

#number of parking spaces such that an arriving car finds a place atleast 90% of times
cummP=numeric()
for(i in 1:length(P)){cummP[i]=sum(P[1:i])}
min(which(cummP > 0.9))-1