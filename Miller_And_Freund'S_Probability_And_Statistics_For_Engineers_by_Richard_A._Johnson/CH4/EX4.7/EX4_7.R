#Claim:10% of his machine require repair within the warranty period of 12 month
p=0.10#Probability
n=20#Total fax machine
#P>5 probability for 5 or more machine require repairs
prob=1-pbinom(4,n,p)
message("Probability : ",prob)
message("Since The probability is to small there for we reject the claim")