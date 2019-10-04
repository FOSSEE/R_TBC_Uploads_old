#Page number--8.7
#Example number--8.6
n=10
#Probability that old machine need adjustment
p1=1/11
q1=1-p
#Probability that new machine need adjustment
p2=1/21
q2=1-p
#Probability that x old machine need adjustment
#P=choose(3,x)*(1/11)^x*(10/11)^(3-x)
#Probability that x new machine need adjustment
#P=choose(7,x)*(1/21)^x*(20/21)^(7-x)

#Part (i)
#Probability that 2 old machine and no new machine need adjustment
P=choose(3,2)*(1/11)^2*(10/11)*(20/21)^7
P

#Part (ii)
#Probability that no old machine and 2 new machine need adjustment
Q=(10/11)^3*choose(7,2)*(1/21)^2*(20/21)^5
Q


