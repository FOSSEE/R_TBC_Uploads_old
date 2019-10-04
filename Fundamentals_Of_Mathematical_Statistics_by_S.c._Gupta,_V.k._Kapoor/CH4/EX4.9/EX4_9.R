#Page number--4.11
#Example number--4.9

#E------------->Drawing a white ball from second vessel
#E1,E2,E3,E4------>Transfer of (0,4),(1,3),(2,2),(3,1) white and black balls

PE1=choose(5,4)/choose(8,4)
PE2=choose(3,1)*choose(5,3)/choose(8,4)
PE3=choose(3,2)*choose(5,2)/choose(8,4)
PE4=choose(3,3)*choose(5,1)/choose(8,4)
P.EE1=0					  #P(E|E1)
P.EE2=1/4			              #P(E|E2)
P.EE3=2/4					  #P(E|E3)
P.EE4=3/4				        #P(E|E4)

PE=PE1*P.EE1+PE2*P.EE2+PE3*P.EE3+PE4*P.EE4

#Using bayes rule
P.E4E=(PE4*P.EE4)/PE			   #P(E4|E)
sprintf("The required probability is: %f ",P.E4E)


