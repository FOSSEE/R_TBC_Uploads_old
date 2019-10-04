#Ex12.18, Page 515
#Answers may vary slightly due to rounding off of values

x<-c(55.10,44.83,46.32,51.10,49.89,45.20,48.18,46.70,54.31,41.50,47.50,52.00,52.25,50.86,51.66,54.77,57.06,57.84,55.22)
y<-c(49.10,31.20,32.80,42.60,42.50,32.70,36.21,40.40,37.42,30.80,35.34,44.80,41.75,39.35,44.07,43.40,45.30,39.08,41.89)

#To find r
r<-cor(x,y)
print(paste("Correlation coefficient, r:",r))

#H0: rho=0.5
#Ha: rho>0.5
rho<-0.5

#To find v
v<-0.5*log((1+r)/(1-r))
print(paste("v:",v))

muv<-0.5*log((1+rho)/(1-rho))
print(paste("muv:",muv))

z<-(v-muv)*sqrt(length(x)-3)
print(paste("z:",z))

#To find P value
p<-pnorm(z,lower.tail=FALSE)
print(paste("p value:",p))

print(paste("H0 is rejected..."))
