#Ex7.8, Page 282
#Answer may vary slightly compared to textbook value

n<-48
n1<-16
p<-n1/n

alpha<-0.05
b<-binom.test(16,48,p,conf.level=0.95)
print(b)