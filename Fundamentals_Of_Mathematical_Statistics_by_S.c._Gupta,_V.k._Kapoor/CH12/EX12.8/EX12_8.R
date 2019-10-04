#Page number--12.32
#Example number--12.8

s.d1=2
s.d2=3
s.d3=3
r12=0.7
r21=0.7
r13=0.5
r31=0.5
r23=0.5
r32=0.5

#Part (i)
r23.1=(r23-r21*r31)/sqrt((1-r21^2)*(1-r31^2))
r23.1
#Part (ii)
R1.23=sqrt((r12^2+r13^2-2*r12*r13*r23)/(1-r23^2))
R1.23
#Part (iii)
r12.3=0.6
r13.2=0.2425
s.d1.3=2*sqrt(1-r13^2);s.d1.3
s.d2.3=3*sqrt(1-r23^2);s.d2.3
s.d1.2=2*sqrt(1-r12^2);s.d1.2
s.d3.2=3*sqrt(1-r23^2);s.d3.2
b12.3=r12.3*s.d1.3/s.d2.3;b12.3
b13.2=r13.2*s.d1.2/s.d3.2;b13.2

#Part (iv)
w=matrix(c(1,r12,r13,r12,1,r23,r13,r23,1),nrow=3,ncol=3)
det(w)
w1=matrix(c(1,r23,r23,1),nrow=2,ncol=2)
det(w1)
s.d1.23=2*sqrt(det(w)/det(w1));s.d1.23






