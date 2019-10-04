#Page number--5.7
#Example number--5.2

x=c(1,2,3,4,5)
px=c()
i=1
while(i<=5){
	px[i]=i/15
	i=i+1
}
a=data.frame(x,px)
a

#Part (i)
PX12=sum(a[1:2,2])
sprintf("The probability X=1 or X=2 is: %f",PX12)

#Part (ii)
P=a[2,2]/(1-a[1,2])
sprintf("The required probability is: %f",P)


