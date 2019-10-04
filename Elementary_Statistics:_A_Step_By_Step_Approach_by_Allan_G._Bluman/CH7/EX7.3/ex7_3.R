da<-c(12.23, 16.56, 4.39, 2.89, 1.24, 2.17, 13.19, 9.16, 1.42, 73.25, 1.91, 14.64, 11.59, 6.69, 1.06, 8.74, 3.17, 18.13, 7.92, 4.78, 16.85, 40.22, 2.42, 21.58, 5.01, 1.47, 12.24, 2.27, 12.77, 2.76)
m=round(mean(da),2)
s=round(sd(da),2)
c=0.9
a=1-c
z=round(qnorm(0.951),2)
n=30
x=round((z*s)/sqrt(n),3)
l<-paste("Hence, one can be 90% confident that the population mean of the assets of all credit unions is between",m-x,"and",m+x,"based on a sample of 30 credit unions")
l