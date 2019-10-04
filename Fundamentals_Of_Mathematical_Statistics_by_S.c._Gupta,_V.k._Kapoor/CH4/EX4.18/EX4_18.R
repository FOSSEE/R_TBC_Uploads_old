#Page number--4.17
#Example number--4.18

#E------------->Event of drawing a white ball from the second urn in the fiest draw
#E0,E1,E2,E3,E4------>Drawing of (0,4),(1,3),(2,2),(3,1),(4,0) white and black balls

PE0=choose(5,4)/choose(10,4)
PE1=choose(5,1)*choose(5,3)/choose(10,4)
PE2=choose(5,2)*choose(5,2)/choose(10,4)
PE3=choose(5,3)*choose(5,1)/choose(10,4)
PE4=choose(5,4)/choose(10,4)
P.EE0=0					  #P(E|E0)
P.EE1=1/4			              #P(E|E1)
P.EE2=2/4					  #P(E|E2)
P.EE3=3/4				        #P(E|E3)
P.EE4=4/4				        #P(E|E4)

#C-------->Future event

P.CE0E=0				        #P(C|intersection(E0,E))
P.CE1E=0				        #P(C|intersection(E1,E))
P.CE2E=1/3				        #P(C|intersection(E2,E))
P.CE3E=2/3				        #P(C|intersection(E3,E))
P.CE4E=3/3				        #P(C|intersection(E4,E))

P.CE=(PE0*P.EE0*P.CE0E+PE1*P.EE1*P.CE1E+PE2*P.EE2*P.CE2E+PE3*P.EE3*P.CE3E+PE4*P.EE4*P.CE4E)/(PE0*P.EE0+PE1*P.EE1+PE2*P.EE2+PE3*P.EE3+PE4*P.EE4)
sprintf("The required probability is: %f ",P.CE)

