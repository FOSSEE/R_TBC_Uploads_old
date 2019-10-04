#Many companies must moniter the effluent that is discharged gfrom there plants into river and waterway.
p=0.01 #XProbability that the measurement on a test specimen will exceed L(limit)
#a)Find the probability of fail for to test
q=1-p#Probability of fail
#Both process is independent
#Ther for by product rule
prob=q*q
message("The Probability is ",prob)
#b) probability that test is free of contantminant conducted for two year one day a week 
#total weeks in two year is 104 ther for
prob=q^104
message("The Probability is ",prob)
