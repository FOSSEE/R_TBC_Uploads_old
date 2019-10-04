#Page number--4.11
#Example number--4.10

#E--------->They get same answer
#E1-------->Both A and B solve correctly
#E2-------->Exactly one of them sovles correctly
#E3-------->No one sovles correctly


PE1=1/6*1/8
PE2=1/6*7/8+5/6*1/8
PE3=5/6*7/8

P.EE1=1					  #P(E|E1)
P.EE2=0			              #P(E|E2)
P.EE3=1/525					  #P(E|E3)

PE=PE1*P.EE1+PE2*P.EE2+PE3*P.EE3

#Using bayes rule
P.E1E=(PE1*P.EE1)/PE			   #P(E1|E)
sprintf("The required probability is: %f ",P.E1E)



