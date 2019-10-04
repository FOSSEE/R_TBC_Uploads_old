x<-c(20,23,29,27,30,34,35,37,40,43)
y<-c(1.32,1.67,2.17,2.70,2.75,2.87,3.65,2.86,3.61,4.25)
z<-(x-mean(x))*(y-mean(y))
 
A<-sum(z)
p<-sum((x-mean(x))*(x-mean(x)))
q<-sum((y-mean(y))*(y-mean(y)))
B<-sqrt(p*q)
cofficient<-A/B
print((cofficient))