# Mean and standard deviation in Binomial distribution :
# mean = n * p  and sd = sqrt(n*p*q)

n = 10
p<-c(.10,.20,.30,.40)
q = 1-p

# mean <- n*p
for(p1 in 1:4){
  mean = n*p
}
print(mean)

pd<-pbinom(2,n,p)


p<-cbind(p,mean,pd)
p

