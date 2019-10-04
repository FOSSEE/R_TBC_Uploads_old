#Page number--15.30
#Example number--15.15

x=c(seq(0,6,1))
f=c(275,72,30,7,5,2,1)			# Observed Frequency
m=sum(f*x)/sum(f)    			#Mean 
# Expected Frequency
e=c(242.1,0.482*242.1,0.241*116.69,0.482/3*28.12,0.482/4*4.51,0.482/5*0.544,0.482/6*0.052)
a=(f-e)^2
b=round(a/e,3)
data.frame(x,f,e,a,b)

x=sum(b)
x				# Aswer here is wrong in the book

sprintf("Poisson distribution is not good to fit to the given data")
