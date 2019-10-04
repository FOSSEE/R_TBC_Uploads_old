#There is two ways of data transmissio 1st is one digit transmission 2nd is three digit transmission method
#a)Evaluate the probability that the transmitted 1 will recevied 1 only by three digit scheme
#Where the probability are
p1=0.01
p2=0.02
p3=0.05
#if we send 111 there is probability for all three digit are (1-p)*(1-p)*(1-p)
#Also the Probability of receving 011 is p*(1-p)*(1-p)
#so the probability of 0 is 3*p*(1-p)*(1-p)
#By rule
prob1=(1-p1)^3+3*p1*(1-p1)*(1-p1)#Probability of getting correct
message("Probability is : ",prob1)
prob2=(1-p2)^3+3*p2*(1-p2)*(1-p2)#Probability of getting correct
message("Probability is : ",prob2)
prob3=(1-p3)^3+3*p3*(1-p3)*(1-p3)#Probability of getting correct
message("Probability is : ",prob3)
#check where  digit  1 and 0 are  receved correcly in the prob of 0.05
#in part on the probability under 0.05 is 0.99275
message("The Total probability is : ",prob3*prob3)

