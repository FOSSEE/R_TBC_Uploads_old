mu=18
sigma=2.5
#Probability for the we can assert that there will be customer be between 8 and 28
n=8
n2=28
K1=(n2-mu)/sigma
k2=(mu-n)/sigma  
#There for the Probability is
Prob=1-1/K1^2
message(Prob)
