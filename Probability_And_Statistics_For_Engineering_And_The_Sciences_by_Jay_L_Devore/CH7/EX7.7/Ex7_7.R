#Ex7.7, Page 279

t1<-320
t2<-440

#To find value of s
s<-(t2-t1)/4

w<-5

z<-qnorm(1-(0.05/2))

n<-(z*s/w)^2
print(paste("Sample size:",n))
print(paste("Integer value of sample size:",ceiling(n)))
