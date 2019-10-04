#Page number--9.20
#Example number--9.8

Mean=65
s.d=5			  #Standard Deviation

P1=pnorm(Inf,65,5)-pnorm(70,65,5)
sprintf("Probability that marks are over 70: %f",P1)
#3 students selected at random, exactly 2 will get more than 70
choose(3,2)*P1^2*(1-P1)