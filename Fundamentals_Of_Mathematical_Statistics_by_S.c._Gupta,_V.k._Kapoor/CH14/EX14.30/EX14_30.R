#Page number--14.34
#Example number--14.30

n1=1000;n2=1200
x1=67.42;x2=67.25
s.d1=2.58;s.d2=2.5

#Part (i)
#H0::u1=u2
#H1::u1!=u2 (two tailed test)

z=abs((x1-x2)/sqrt(s.d1^2/n1+s.d2^2/n2))
z
if(z<1.96) print("H0 accepted")
sprintf("There is no significant difference between sample means")

#Part (ii)
s.e.s1s2=sqrt(s.d1^2/(2*n1)+s.d2^2/(2*n2))
s.e.s1s2
z=(s.d1-s.d2)/s.e.s1s2
z     
if(z<1.96) print("H0 accepted")
sprintf("The sample standard deviation do not differ significantly")