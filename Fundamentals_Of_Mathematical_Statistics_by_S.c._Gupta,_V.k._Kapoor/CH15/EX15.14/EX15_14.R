#Page number--15.29
#Example number--15.14

#Probability of male birth
p=1/2
#Probability of female birth
q=1/2
n_m_b=c(seq(0,4,1))
f=c(32,178,290,236,64)				# Number of families
e=c()
for (i in n_m_b){
	e[i+1]=800*choose(4,i)*p^4		# Frequency of male birth 
}
a=(f-e)^2
b=round(a/e,3)
data.frame(n_m_b,f,e,a,b)

#H0 is null hypothesis
x=sum(b)
x

sprintf("H0 may be rejected")
sprintf("Male and female births are not equally probable")
