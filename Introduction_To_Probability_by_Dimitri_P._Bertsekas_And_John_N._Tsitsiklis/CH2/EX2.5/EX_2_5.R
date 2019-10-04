#EX_2_5
#page 18
x<-numeric(6)#initialize the array of size 6 to store the events
px<-numeric(6)#initialize the array  to store the probaility of events
ex<-numeric(6)#initialize the array to store the product of probabilty and the events 
ex1<-numeric(6)# initialize the array to store the product between the probaility and the events
x<-c(1:6)#the events
px<-1/6#the probabilty of events
for(i in 1:6)#loop to calcualte the product between the probabilty of events and between the square of events 
{
 ex[i]<-prod(x[i],px) 
 ex1[i]<-prod(x[i]^2,px)
}
EX<-sum(ex)#calcualted the sum of  E(X)
EX1<-sum(ex1)#calcualted the sum of E(X^2) 
EX
EX1
variance<-EX1-EX^2#calcualted the variance 
variance# print the calcualted variance
