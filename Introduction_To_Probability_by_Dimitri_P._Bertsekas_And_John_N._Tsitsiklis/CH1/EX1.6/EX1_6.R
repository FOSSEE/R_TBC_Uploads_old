#EX1_6.R
#page 19
coins<- c("H","T","H","T","H","T")
for(i in 1:8){
flips <- sample(coins, size=3, replace=FALSE)
print(flips)
}
A<-dbinom(2, size=3, prob=0.5)
dbinom(3, size=3, prob=0.5)
#probability of getting more heads than tails
p<-dbinom(3, size=3, prob=0.5)+
dbinom(2, size=3, prob=0.5)
print(p)
#probability of first toss is a head
q<- 1-p
#probability of (A and B)
s<- 3/8
#conditional probabilty p(A|B)
r<- s/q
print(r)

  

