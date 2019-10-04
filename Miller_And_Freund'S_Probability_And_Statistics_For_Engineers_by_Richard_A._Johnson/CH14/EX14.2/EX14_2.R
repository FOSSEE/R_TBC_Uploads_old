#Following is the sverage weekly losses of work-hours due to accident in 10 industrial plants before and after
#safety program was put into operation
Before<-c(45,73,46,124,33,57,83,34,26,17)
After<-c(36,60,44,119,35,51,77,29,24,11)
l.O.c=0.05
data=Before-After
data
library(BSDA)
SIGN.test(data)
#Null Hypothesis:mu=0
#Alternative hypothesis:mu>0
#Criterion:reject null hypothesis if Probability of x is less then 0.05
sign=c()#This Store the sign for the data
for (i in 1:length(data)){
  if(data[i]>0){
    sign[i]='+'
  }else{
    sign[i]='-'
  }
}
message(sign)
X=length(sign[  sign %in% '+'])#x for no of  pluse sign 
p=0.5#Probability
#P(X>9)
PX=1-pbinom(X-1,10,p)
message("P(X>9) = ",PX)
message("Since PX is less then 0.05 there for we reject the Null Hypothesis")
print("There for the safety program is effective")