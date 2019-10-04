#Page number--4.15
#Example number--4.16

#E------------->The referee observes plus sign
#E1,E2--------->Wrote plus or minus sign
#E3,E4--------->Plus signed not changed, Plus sign was changed exactly twice

PE1=1/3
PE2=1-PE1

#A1,A2,A3---->B,C,D change sign on slip
PA1=2/3;PA2=2/3;PA3=2/3
PA1b=1/3;PA2b=1/3;PA3b=1/3 		#P(Ai) bar

PE3=(1/3)^3
PE4=PA1*PA2*PA3b+PA1*PA2b*PA3+PA1b*PA2*PA3

P.EE1=PE3+PE4			 #P(E|E1)
sprintf("The required probability is: %f ",P.EE1)

#E5,E6--------->Minus sign change once, Minus sign change thrice
PE5=PA1*PA2b*PA3b+PA1b*PA2*PA3b+PA1b*PA2b*PA3
PE6=PA1*PA2*PA3
P.EE2=PE5+PE6			 #P(E|E2)
sprintf("The required probability is: %f ",P.EE2)

P.E1E=(PE1*P.EE1)/(PE1*P.EE1+PE2*P.EE2) 			#P(E1|E)
sprintf("The FINAL probability is: %f ",P.E1E)




