#Ex8.1, Page 304
#Answers may vary slightly due to rounding off of values

#X<-number of crashes with no visible damage
#Reject H0 if x>=8 (x<-observed value of test statistic)

#When H0 is true
n<-20
p1<-0.25

#alpha=P(type I error)
alpha<-1-pbinom(7,n,p1)
print(paste("Alpha value:",alpha))

print(paste("When H0 is true, roughly",trunc(100*alpha,digits=2),"% of all experiments consisting of 20 crashes would result into a Type I error"))

#beta=P(type II error)
#Different beta for each different p that exceeds 0.25, thus taking p=0.3
p2<-0.3
beta<-pbinom(7,n,p2)
print(paste("Beta value:",beta))
print(paste("When H0 is false, roughly",trunc(100*beta,digits=2),"% of all experiments would result into a Type II error"))

#Table showing variation of beta values with increase in value of p
for(i in 3:8){
  p<-0.1*i
  a<-pbinom(7,n,p)
  print(paste("p-value:",p))
  print(paste("Beta value:",a))
}

  

