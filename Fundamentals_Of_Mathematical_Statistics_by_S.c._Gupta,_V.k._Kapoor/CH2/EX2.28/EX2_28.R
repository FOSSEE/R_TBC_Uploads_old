#PAGE NUMBER--2.39
#Example number--2.28

d=seq(-4,3,1)
f=c(2,5,7,13,21,16,8,3)
fd=f*d
fd2=fd*d
data.frame(fd,fd2)

mean=21.9
s.d2=63.9725
h=round(sqrt(solve(193/75-(-9/75)^2,s.d2)))
h
A= 21.9 + 9*5/75
A

# Mid value=(x1+x2)/2=A
# Magnitude of class= x1-x2=h
a=matrix(c(1,-1,1,1),nrow=2,ncol=2)
b=matrix(c(A*2,h),nrow=2,ncol=1)
t=solve(a,b)
t
x1=t[1,1];x1
x2=t[2,1];x2

# So the classes obtained
class_interval=c("0-5","5-10","10-15","15-20","20-25","25-30","30-35","35-40")
mid=c((0+5)/2,(5+10)/2,(10+15)/2,(15+20)/2,(20+25)/2,(25+30)/2,(30+35)/2,(35+40)/2)
data.frame(d,mid,class_interval,f)








