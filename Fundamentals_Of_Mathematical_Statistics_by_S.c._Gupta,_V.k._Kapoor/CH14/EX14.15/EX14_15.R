#Page number--14.22
#Example number--14.15

n1=400;p1=300/400;q1=1-p1
n2=500;p2=300/500;q2=1-p2

#H0: P1=P2
#H1: P1!=P2 (two tailed test)

p=(n1*p1+n2*p2)/(n1+n2);p
q=1-p
s.e.p1p2=sqrt(p*q*1/(n1+n2)*500/400)
s.e.p1p2
z=(p-p1)/s.e.p1p2
abs(z)     # Answer is wrong in the book
sprintf("H0 is rejected")