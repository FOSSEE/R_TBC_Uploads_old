#Ex5.12, Page 203
#Answers may slightly vary due to rounding off of values

#Function when X=0.8: (1/34)(24+30(y^2))

#P(Y<=0.5) given X=0.8
f1<-function(y) {(1/34)*(24+30*(y^2))}
f<-integrate(f1,lower=0,upper=0.5)
print(paste("P(walk-up facility is busy atmost half the time)=",f$value))

#E(Y) given that X=0.8
f2<-function(y) {y*(1/34)*(24+30*(y^2))}
p<-integrate(f2,lower=0,upper=1)
print(paste("Expected proportion of time that walk-up facility is busy:",p$value))
