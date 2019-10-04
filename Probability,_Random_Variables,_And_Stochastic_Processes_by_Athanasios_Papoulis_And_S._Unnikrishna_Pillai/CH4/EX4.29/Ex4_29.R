#page no. 114-115
#example 4-29

n=10^5   #number of people (given)
p=0.001  #porobability of causality (given)
lambda=n*p


   #part (a)

n0=(50*10^6)/200000


del=(lambda*exp((1-lambda/n0)))/n0

cat("del equals",del,"so that del^250 = 0 and the desired probability is essentially 0")



   #part (b)

n1=((50*10^6)-(25*10^6))/200000
print(n1)

del=0.9771
deln1=del^n1
print(deln1)

p_x=1-((deln1*1)/(sqrt(2*3.14*n1))*((1-lambda)/(n1+1)))
print(p_x)

#the answer in the book is 0.9904 which is approximation which signifies that the company is assured a profit of $25 
#million with almost certainty 