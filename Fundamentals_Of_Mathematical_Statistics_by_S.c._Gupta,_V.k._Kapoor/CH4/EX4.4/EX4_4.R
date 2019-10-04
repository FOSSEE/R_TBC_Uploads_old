#Page number--4.8
#Example number--4.4

#A------------->Output is defective
#E1,E2,E3------>Output produced by machines I,II,III

PE1=3000/10000
PE2=2500/10000
PE3=4500/10000
P.AE1=0.01					  #P(A|E1)
P.AE2=0.012			              #P(A|E2)
P.AE3=0.02					  #P(A|E3)

PA=PE1*P.AE1+PE2*P.AE2+PE3*P.AE3
PA
sprintf("The probability that output is deffective: %f ",PA)


#Using bayes rule
P.E1A=(PE1*P.AE1)/PA					#P(E1|A)
P.E2A=(PE2*P.AE2)/PA					#P(E2|A)
P.E3A=(PE3*P.AE3)/PA					#P(E3|A)
sprintf("The probabilities of machine I,II,III are: %f ,%f ,%f",P.E1A,P.E2A,P.E3A)

