#Page number--4.19
#Example number--4.20

#A------------->Getting a red face in each of 1st n throws 
#E1,E2,E3------>Event that Die A is used, Die B is used, Getting a red face 

#Part (i)
P.E3E1=4/6  		#P(E3|E1)
P.E3E2=2/6 			#P(E3|E2)

PE1=1/2;PE2=1/2

PE3=PE1*P.E3E1+PE2*P.E3E2
sprintf("The probability of getting a red face in any throw: %f ",PE3)

#Part (ii)
#Using the Law Of Succession
sprintf("The probability of getting a red face at the 3rd throw when 1st two gave red faces: %f ", (1/2+1)/(1/2+2))