#Ex4.29, Page 181

old.par<-par(mfrow=c(1,2))

#To plot first sample
Percentage1<-c(5, 15, 25, 35, 45) 
z_percentile1<-c(qnorm(5/100), qnorm(15/100), qnorm(25/100), qnorm(35/100), qnorm(45/100)) 
Sample_observation1<-c(-1.91, -1.25, -0.75, -0.53, 0.2)
df1<-data.frame(Percentage1, z_percentile1, Sample_observation1)    
print(df1)
plot(z_percentile1,Sample_observation1)

#To plot second sample
Percentage2<-c(55, 65, 75, 85, 95) 
z_percentile2<-c(qnorm(55/100), qnorm(65/100), qnorm(75/100), qnorm(85/100), qnorm(95/100)) 
Sample_observation2<-c(0.35, 0.72, 0.87, 1.40, 1.56)
df2<-data.frame(Percentage2, z_percentile2, Sample_observation2)    
print(df2)
plot(z_percentile2,Sample_observation2)

par(old.par)