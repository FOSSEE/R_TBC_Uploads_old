#Page number--14.16
#Example number--14.7

#H1: P1!=P2 (two tailed test)
n1=400
n2=600
X1=200;X2=325
p1=X1/n1
p2=X2/n2

p=(n1*p1+n2*p2)/(n1+n2)
q=1-p

z=abs((p1-p2)/sqrt(p*q*(1/n1+1/n2)))
z
if(z<1.96) print("Mean and women do not differ on flyover proposal")
