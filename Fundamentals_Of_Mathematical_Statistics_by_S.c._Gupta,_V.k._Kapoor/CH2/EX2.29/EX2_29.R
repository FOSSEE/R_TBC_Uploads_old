#PAGE NUMBER--2.40
#Example number--2.29

N=250
n1=100
x1=15
s.d1=3
n2=250-n1
mean=15.6
s.d=sqrt(13.44)

x2=solve(150,N*mean-1500)
x2
d1=x1-mean;d1
d2=x2-mean;d2
s.d2=sqrt(solve(150,N*13.44-n1*9.36-n2*0.16))
s.d2