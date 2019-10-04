#Ex8.12, Page 326
#Answers may vary slightly due to rounding off of values

#H0: p=0.9
#Ha: p<0.9

n<-225
p0<-0.9
pdash<-0.8
alpha<-0.01

zalpha<-qnorm(1-alpha)

#To find beta(0.8)
num<-p0-pdash-(zalpha*sqrt((p0*(1-p0))/n))
denom<-sqrt(pdash*(1-pdash)/n)
beta<-1-pnorm(num/denom)
print(paste("Beta(0.8):",beta))

#P(H0 rejected)
prob<-1-beta
print(paste("P(H0 rejected)=",prob,"and thus,",ceiling(prob*100),"% of samples will result in correct H0 rejection"))

#To find n
n<-((zalpha*sqrt(p0*(1-p0))+zalpha*sqrt(pdash*(1-pdash)))/(pdash-p0))^2
print(paste("Sample size:",ceiling(n)))