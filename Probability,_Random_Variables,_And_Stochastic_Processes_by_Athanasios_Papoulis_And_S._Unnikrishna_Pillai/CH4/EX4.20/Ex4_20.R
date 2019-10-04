#page no. 107
#example 4-20

p=q=0.5 #probability of head/tail when a coin is tossed 
n=1000  #number of times the coin is tossed

#part (a)
p_A=1/sqrt(2*3.14*n*p*q)
print(p_A)

#part (b)

p_B=(exp(-0.2))/(10*sqrt(5*3.14))
print(p_B)

#in book the solution of  part (b) is rounded to 0.0207