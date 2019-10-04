#Null hypothesis=delta=0
#Alternative hypothesis= delta!=0
l.o.c=0.05
n=10
r=0.732
#reject null hypothesis if Z>1.96 or z<-1.96
#Z=sqrt(n-1)*Zbar
Zbar=1/2*(log((1+r)/(1-r)))
z=sqrt(n-3)*Zbar
Zbar
z
print("There for we reject the null hypothesis")