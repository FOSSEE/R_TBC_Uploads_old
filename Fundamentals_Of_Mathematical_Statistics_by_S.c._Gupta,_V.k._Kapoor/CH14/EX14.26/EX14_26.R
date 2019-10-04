#Page number--14.31
#Example number--14.26

n1=400;n2=400
x1=250;x2=220
s.d1=40;s.d2=55

#H0::u1=u2
#H1::u1!=u2 (two tailed test)

z=abs((x1-x2)/sqrt(40^2/400+55^2/400))
z
if(z>3) print("H0 rejected")
sprintf("Expenditure of two population of shoppers in market A and B differ significantly")

