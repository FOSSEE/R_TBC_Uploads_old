#Page number--9.14
#Example number--9.1
#Load Package-->cubature

library(cubature)
N=1000
u=79.945
s.d=5.545
class=c("Below 60","60-65","65-70","70-75","75-80","80-85","85-90","90-95","95-100","100 and over")
l_c_b=c(-Inf,60,65,70,75,80,85,90,95,100)
z=c()
for(i in c(seq(1,10,1))){
	z[i]=(l_c_b[i]-u)/s.d
}
z
#Equation of normal curve
#f(x)=1000/sqrt(2*pi)*exp(-1/2*((x-u)/s.d)^2)
oZ=c()
for(i in c(seq(1,10,1))){
	# define the integrated function
	f <- function(x){exp(-x^2/2)}
	a=adaptIntegrate(f, lowerLimit =-Inf, upperLimit =z[i]) 
	oZ[i]=1/sqrt(2*pi)*a$integral
}
oZ
deltaZ=c(0.000112,0.002914,0.031044,0.147870,0.322050,0.319300,0.144072,0.029792,0.002733,NA)
Expected_Frequency=c()
for(i in c(seq(1,10,1))){
	Expected_Frequency[i]=N*deltaZ[i]
}

data.frame(class,l_c_b,z,oZ,deltaZ,Expected_Frequency,round(Expected_Frequency))
Total=sum(round(Expected_Frequency[1:9]))
Total


