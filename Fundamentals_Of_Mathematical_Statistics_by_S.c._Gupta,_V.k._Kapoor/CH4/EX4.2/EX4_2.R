#Page number--4.7
#Example number--4.2

#A------------->Introduction to co-education
#E1,E2,E3------>Chatterji,Ayangar,Singh selected as principal

PE1=4/9
PE2=2/9
PE3=3/9
P.AE1=0.3					  #P(A|E1)
P.AE2=0.5			              #P(A|E2)
P.AE3=0.8					  #P(A|E3)

#Part (i)
PA=PE1*P.AE1+PE2*P.AE2+PE3*P.AE3
sprintf("The required probability is: %f ",PA)

#Part (ii)
#Using bayes rule
P.E3A=(PE3*P.AE3)/PA			   #P(E3|A)
sprintf("The required probability is: %f ",P.E3A)


