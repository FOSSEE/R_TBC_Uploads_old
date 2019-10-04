#Page number--4.6
#Example number--4.1

#There are 3 factories-->X,Y,Z
#Product produced respectively--->3n,n,n
#Where n is constant, let suppose n=1
n=1
#E1,E2,E3 denotes event to the item produced in X,Y,Z
#A be the event that item is deffective
PE1=3*n/(3*n+n+n)
PE2=n/(5*n)
PE3=n/(5*n)
#GIVEN------->P(A|E1)=P(A|E3)=0.03  AND  P(A|E2)=0.05
P.AE1=0.03					#P(A|E1)
P.AE3=0.03			      	#P(A|E3)
P.AE2=0.05					#P(A|E2)

#Part (i)
PA=PE1*P.AE1+PE2*P.AE2+PE3*P.AE3
PA
sprintf("The required probability is: %f ",PA)


#Part (ii)
#Using bayes rule
P.E1A=(PE1*P.AE1)/PA					#P(E1|A)
P.E2A=(PE2*P.AE2)/PA					#P(E2|A)
P.E3A=(PE3*P.AE3)/PA					#P(E3|A)
sprintf("The required probabilities are: %f ,%f ,%f",P.E1A,P.E2A,P.E3A)



