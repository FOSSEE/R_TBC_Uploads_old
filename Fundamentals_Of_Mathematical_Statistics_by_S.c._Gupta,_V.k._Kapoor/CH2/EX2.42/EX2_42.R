#PAGE NUMBER--2.55
#Example number--2.42

mean=10
u2=16
s.d=sqrt(16)
y1=1
b1=4

# First four moments about origin 
U1=mean
U2=u2 + U1^2; U2
u3=s.d^3; u3
U3= u3 + 3*U2*U1 -2*U1^3; U3
u4= b1*u2^2; u4        # here we have to take value of b1, written wrong in book

U4= u4 + 4*U3*U1 - 6*U2*U1^2 + 3*U1^4; U4   # plus,minus signs are not correct in the book

sprintf("The distribution is leptokurtic")