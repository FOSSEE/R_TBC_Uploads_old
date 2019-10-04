#Ex9.5, Page 354
#Answers may vary slightly due to rounding off values

c1<-c('Variable_diam', 'N', 'Mean', 'Median', 'TrMean', 'StDev', 'SEMean', 'Min', 'Max', 'Q1','Q3')
c2<-c('3/8',78,4.250,4.230,4.238,1.300,0.147,1.634,7.327,3.389,5.075)
c3<-c('1/2',88,7.140,7.113,7.150,1.680,0.179,2.450,11.343,5.965,8.447)
df<-data.frame(c1,c2,c3)
print(df)

mu1<-4.25
mu2<-7.14
z<-qnorm(1-(0.05/2))
s1<-1.3
s2<-1.68
m<-78
n<-88

#To find confidence intervals
l<-(mu1-mu2)-z*sqrt((s1^2)/m+(s2^2)/n)
r<-(mu1-mu2)+z*sqrt((s1^2)/m+(s2^2)/n)
print(paste("Left endpoint of interval:",l))
print(paste("Right endpoint of interval:",r))
