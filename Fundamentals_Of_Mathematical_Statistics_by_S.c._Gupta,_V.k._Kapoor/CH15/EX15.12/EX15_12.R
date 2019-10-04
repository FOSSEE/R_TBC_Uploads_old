#Page number--15.27
#Example number--15.12

digits=c(seq(0,9,1))
f=c(1026,1107,997,966,1075,933,1107,972,964,853) 	# Observed Frequency
m=sum(f)/length(f)    			    			# Mean
e=rep(m,10)					  			# Expected Frequency
a=(f-e)^2
b=round(a/e,3)
data.frame(digits,f,e,a,b)

#H0 is null hypothesis
x=sum(b)
x

sprintf("H0 may be rejected")
sprintf("The digits are not uniformly distributed in the directory")
