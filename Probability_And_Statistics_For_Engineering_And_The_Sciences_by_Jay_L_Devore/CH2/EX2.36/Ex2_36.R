#Ex2.36, Page 85
#Answers may vary slightly due to rounding off of values

pai<-rep(0.9,times=6)

#To find probability that system lifetime exceeds t0
prob1<-pai[1]*pai[2]*pai[3]+pai[4]*pai[5]*pai[6]-(prod(pai))
print(paste("P(system lifetime exceeds t0):",prob1))

#To find probability that system lifetime is at least t0
prob2<-(1-(1-pai[1])*(1-pai[2]))^3
print(paste("P(system lifetime is at least t0):",prob2))
