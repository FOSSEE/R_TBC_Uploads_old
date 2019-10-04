#Ex3.30, Page 116
#Number of licensed drivers
n<-500000
#Number of licensed drivers who are insured
s<-400000
#P(s on second  trial after s on first trial)
p1<-(s-1)/(n-1)
print(paste("P(s on 2|s on 1)=",p1))

#P(s on tenth trial after s on ninth trial)
p2<-(s-9)/(n-9)
print(paste("P(s on 10|s on 9)=",p2))

print(paste("The experiment is binomial with n=10 and p=0.8"))
