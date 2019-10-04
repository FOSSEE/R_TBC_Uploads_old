#Ex12.16, Page 511
#Answers may vary slightly due to rounding off of values

x<-c(0.066,0.088,0.120,0.050,0.162,0.186,0.057,0.100,0.112,0.055,0.154,0.074,0.111,0.140,0.071,0.110)
y<-c(4.6,11.6,9.5,6.3,13.8,15.4,2.5,11.8,8.0,7.0,20.6,16.6,9.2,17.9,2.8,13.0)

#To find r(point estimate of population correlation coefficient)
r<-cor(x,y)
print(paste("r:",r))