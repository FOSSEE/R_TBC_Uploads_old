#PAGE NUMBER--2.48
#Example number--2.35

A=4
U1=-1.5
U2=17
U3=-30;  U4=108
u2= U2-U1^2; u2
u3= U3-3*U2*U1+2*U1^3; u3
u4= U4-4*U3*U1+6*U2*U1^2 -3*U1^4; u4

b1=u3^2/u2^3
b1
b2=u4/u2^2
b2
mean= A + U1
mean

# Taking A=0, we get the first moment about origin
U1=2.5
U2= u2+U1^2; U2
U3= u3+3*u2*U1+U1^3; U3
U4= u4+4*u3*U1+6*u2*U1^2+U1^4; U4

# Taking A=2, we get the first moment about x=2
U1=2.5-2
U2= u2+U1^2; U2
U3= u3+3*u2*U1+U1^3; U3
U4= u4+4*u3*U1+6*u2*U1^2+U1^4; U4

