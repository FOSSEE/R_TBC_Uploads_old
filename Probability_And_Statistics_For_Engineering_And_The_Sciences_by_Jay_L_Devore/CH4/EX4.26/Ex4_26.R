#Ex4.26, Page 173
#Answers may slightly vary due to rounding off of values

#alpha
a<-1.3
#beta
b<-0.8
#gamma
g<-4

#P(5<=X<=6)
p1<-pweibull(6-g,a,b)-pweibull(5-g,a,b)
print(paste("P(air void volume of a specimen is between 5% and 6%)=",p1))

