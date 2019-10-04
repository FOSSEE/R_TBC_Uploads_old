# Probability Example :

p = .0003
n= 10000
l <- n*p
l
x<- c(7,8,9,10,11,12)

# Binomial probability for x>5 :
b<-dbinom(x,n,p)
b
sum(b)


# Poission probability for x>5 :
p<-dpois(x,l)
p
sum(p)

