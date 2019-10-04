#Page number--8.6
#Example number--8.3
n=6
#Probability of correct distinction between coffee
p=3/4
q=1-p
#Probability of getting x correct distinction between coffee
#P=choose(6,x)*(3/4)^x*(1/4)^(6-x)
#Probability of getting atleast 5 correct distinction between coffee
P=choose(6,5)*(3/4)**5*(1/4)+choose(6,6)*(3/4)^6
P
#Probability that the claim is rejected
Q=1-P
Q
