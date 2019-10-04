#Page number--3.38
#Example number--3.29

#Probability of rolling die=P(n)
#P(n)is proportional to n
#P(n)=kn
#We know that-----> P(1)+P(2)+P(3)+P(4)+P(5)+P(6)=1
#k(1+2+3+4+5+6)=1
k=solve(21,1)
#We need to find probability of an odd number appearing on top 
#P(1)+P(3)+(5)
p=1*k+3*k+5*k
sprintf("Probability : %f",p)