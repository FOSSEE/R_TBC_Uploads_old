#page no. 58
#example 3-13

#sum function is used to do the summation
#choose function is used to do the nCr


p=0.1    #probability that a part is defective (given)
n=10^4   #total parts 
k=0:1100 #limit of defective parts 

pb=sum(choose(n,k)*(p^k)*((1-p)^(n-k)))          #this is required probability 

pb

print("The value tends to infinity therefore R is taking it as NaN")


