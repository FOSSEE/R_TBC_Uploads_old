#Page number--4.7
#Example number--4.3

#X,Y,Z---->managers
#E1,E2,E3------>Are the events of becoming X,Y,Z managers

PE1=4/9
PE2=2/9
PE3=1/3
P.AE1=0.3					#P(A|E1)
P.AE2=0.5			      	#P(A|E2)
P.AE3=0.8					#P(A|E3)

#Part (i)
PA=PE1*P.AE1+PE2*P.AE2+PE3*P.AE3
PA
sprintf("The probability that Bonus scheme is introduced: %f ",PA)

#Part (ii)
#Using bayes rule
P.E1A=(PE1*P.AE1)/PA			   #P(E1|A)
sprintf("The probability that X will be manager: %f ",P.E1A)


