#show that for 40000 flips of coin th probality of head is between 0.47 and 0.525
n=40000
prob=0.99
p=1/2#probability of success
q=1-p
mu=n*p
sigma=(n*p*q)^0.5
sigma
k=(1/(1-prob))^0.5
val1=mu-k*sigma
val2=mu+k*sigma
p1=val1/n
p2=val2/n
cat("Hence the probaility is at leat 0.99 that we have probabilty of getting had in range ")
cat(p1 ,'and' ,p2)