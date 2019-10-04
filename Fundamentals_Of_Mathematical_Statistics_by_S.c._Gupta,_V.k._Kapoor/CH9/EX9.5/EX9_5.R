#Page number--9.17
#Example number--9.5

Mean=662
s.d=32			  #Standard Deviation

#Part (i)
P1=pnorm(Inf,662,4)-pnorm(700,662,32)
sprintf("Probability that plots has a yield over 700 kilos : %f",P1)
#Batch off 1000 plots
sprintf("Expected number of plots with yield over 700 kilos: %f",as.integer(1000*P1))

#Part (ii)
P2=pnorm(650,662,32)
sprintf("Probability that plots has a yield less than 650 kilos : %f",P2)
#Batch off 1000 plots
sprintf("Expected number of plots with yield less than 650 kilos: %f",as.integer(1000*P2))
#Answer vary due to rounding of values

#Part (iii)
#P(X>x1)=100/1000
p=100/1000
z1=1.28 			 #From Normal Table
x1=662+32*z1
sprintf("Best 100 plots have yield: %f kilos",x1)
