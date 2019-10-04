#Example 13 chapter 4 page no176
p=0.1
n=20
x=c(0:20)
P=dbinom(x,n,p)
P_xmorethan5=1-(P[1]+P[2]+P[3]+P[4]+P[5])     #prob of 5 or more machine damage
print(P_xmorethan5)
