##Chapter 14 : Probabilistic Inventory Models
##Example 1-1 : Page 575

#Daily demand
D=100
#standard deviation
dev=10
#probability of running out of stock
alpha=0.05
#lead time
L=2
#average demand during lead time
muL=D*L
#standard deviation of demand during lead time
devL=sqrt((dev**2)*L)
#optimal inventory level for reordering
x=qnorm(0.05,100,10,lower.tail = F)
z=(x-D)/dev
B=devL*z
B