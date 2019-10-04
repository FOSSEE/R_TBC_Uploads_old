#EX_2_4
#page 17
#let p=0.15
#(1-p)=0.85
X<-numeric(2)#initializing the array of size 2 to store the varaible 
px<-numeric(2)#initializing the array PX to store the probability of occuring the event 
px1<-numeric(2)#initializing the array to store mean of X  
px2<-numeric(2)#initializing the array to store mean of X^2
X<-c(1,0)#the events
PX<-c(0.15,0.85)#probability of events
for(i in 1:2)#loop to clculate the product of events and the probability of occuring the events
{
  px1[i]<-X[i]*PX[i]
}
px1<-sum(px1)#calcualted the mean
for(i in 1:2)#;loop to calculate the product of square of event and the probabilty of occuring the events  
{
  px2[i]<-X[i]^2*PX[i]
}
px2<-sum(px2)#calcualted the mean of square of the  events
variance<-px2-px1^2#cacualted the variance 
variance
prod(PX)
