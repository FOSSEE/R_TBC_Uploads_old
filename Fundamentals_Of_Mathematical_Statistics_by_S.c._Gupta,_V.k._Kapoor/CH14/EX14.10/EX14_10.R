#Page number--14.19
#Example number--14.10

n1=1000;p1=800/1000;q1=1-p1
n2=1200;p2=800/1200;q2=1-p2

#H0: P1=P2
#H1: P1>P2 (Right-tailed test)

p=(n1*p1+n2*p2)/(n1+n2);p
q=1-p

z=abs((p1-p2)/sqrt(p*q*(1/n1+1/n2)))
z
if(z>1.96) print("H0 hypothesis is rejected")
sprintf("There is significant decrease in consuption of tea after increase in excise duty")

