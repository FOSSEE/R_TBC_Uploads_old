#Page number--5.7
#Example number--5.3
#LOAD PACKAGE----->prob

s=rolldie(2)
s
X=c(1,2,3,4,5,6,7,8,9,10,11,12)
a=0
for(i in 1:12){
	a[i]=nrow(subset(s,X1+X2==i))/nrow(s)
}
#Probability chart
plot(X,a,type="h",xlim=c(0,12),ylim=c(0,0.17),ylab="Prob.",xlab="Sum of two faces")

#Cummulative probability distribution
FX=c(sum(a[1]),sum(a[1:2]),sum(a[1:3]),sum(a[1:4]),sum(a[1:5]),sum(a[1:6]),sum(a[1:7]),sum(a[1:8]),sum(a[1:9]),sum(a[1:10]),sum(a[1:11]),sum(a[1:12]))
data.frame(X,FX)

