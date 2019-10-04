#Page number--15.34
#Example number--15.18

Class=c("Male employed","Male unemployed","Female employed","Female unemployed")
f=c(1480,5720,120,680) 						# Observed Frequency
e=c(7200*1600/8000,7200-1440,1600-1440,6400-5760)	# Expected Frequency
a=(f-e)^2
b=round(a/e,2)
data.frame(Class,f,e,b)

#H0 is null hypothesis
x=sum(b)
x

sprintf("H0 may be rejected")
sprintf("Appointment is based on the basis of sex")
