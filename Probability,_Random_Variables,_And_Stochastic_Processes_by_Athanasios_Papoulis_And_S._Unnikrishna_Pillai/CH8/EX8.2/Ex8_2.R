#page no. 306
#example 8-2

n=100 #number of times the coin is tossed (given)
p=0.5 #probability of getting head in one coin toss (given)
q=1-p
k1=n*p - 3*sqrt(n*p*q)
k2=n*p + 3*sqrt(n*p*q)


cat(" We predict,therefore, with confidence coefficient 0.997 that the number of heads will be between ",k1,"and ",k2)