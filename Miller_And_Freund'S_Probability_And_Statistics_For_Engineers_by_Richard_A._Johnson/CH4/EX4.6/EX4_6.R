p=0.65
n=15
#probability for 11 will be written by the algorithm
prob=dbinom(11, 15, 0.65)
message("probability is : ",prob)
#probability for at least 10 will be written by the algorithm
prob=1-pbinom(9,15,0.65 )
message("probability is : ",prob)
#probability between 8 and 11 inclusive will be written by the algorithm
prob=pbinom( 11, 15, 0.65 ) - pbinom( 7, 15, 0.65 )
message("probability is : ",prob)