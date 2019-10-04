#PAGE NUMBER--2.51
#Example number--2.40

N=250
x=54
s.d=3
b1=0; b2=3

#Wrong observation---> 64 and 50      Correct observation---> 62 and 52
#Part (i)
ux=N*x
cx=ux - (64+50) + (62+52)
cx
cm=cx/N  			# Corrected mean
cm

# Part (ii)
ux2=N*s.d^2; ux2
cx2=ux2 -((64-54)^2+(50-54)^2)+((62-54)^2+(52-54)^2); cx2
cs.d=round(sqrt(cx2/N),2)		# Corrected Standard Deviation
cs.d

# Part (iii)
u3=b1*u2^3; u3
ux3=N*u3; ux3
cx3=0 -((64-54)^3+(50-54)^3)+((62-54)^3+(52-54)^3); cx3    # Answer here is wrong
cu3=cx3/N; cu3
cb1=(cu3)^2/(cx2/N)^3; round(cb1)

# Part (iv)
u4=b2*9^2
ux4= N*u4; ux4
cx4= ux4 - ((64-54)^4+(50-54)^4)+((62-54)^4+(52-54)^4); cx4
cu4=cx4/N; cu4
cb2= cu4/(cx2/N)^2; cb2

