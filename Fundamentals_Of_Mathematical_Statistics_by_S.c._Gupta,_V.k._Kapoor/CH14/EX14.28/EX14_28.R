#Page number--14.32
#Example number--14.28

n1=250;n2=400
x1=120;x2=124
s.d1=12;s.d2=14
s.e.x1x2=sqrt(s.d1^2/n1+s.d2^2/n2)
s.e.x1x2

#H0::u1=u2
#H1::u1!=u2 (two tailed test)

z=(x1-x2)/s.e.x1x2
z
if(z>3) print("H0 rejected")
sprintf("There is significant difference between sample means")

#|u1-u2| limits
ll=abs(x1-x2)-2.58*s.e.x1x2   		#lower limit
ul=abs(x1-x2)+2.58*s.e.x1x2		   	#upper limit
sprintf("|u1-u2| varies between %f and %f",ll,ul)
