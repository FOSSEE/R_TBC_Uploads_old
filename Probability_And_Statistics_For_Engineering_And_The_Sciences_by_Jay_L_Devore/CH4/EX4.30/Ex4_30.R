#Ex4.30, Page 182

old.par<-par(mfrow=c(1,1))
n<-20
z_percentile<-c(qnorm((1-0.5)/n), qnorm((2-0.5)/n), qnorm((3-0.5)/n), qnorm((4-0.5)/n), qnorm((5-0.5)/n), 
                qnorm((6-0.5)/n), qnorm((7-0.5)/n), qnorm((8-0.5)/n), qnorm((9-0.5)/n), qnorm((10-0.5)/n),
                qnorm((11-0.5)/n), qnorm((12-0.5)/n), qnorm((13-0.5)/n), qnorm((14-0.5)/n), qnorm((15-0.5)/n),            
                qnorm((16-0.5)/n), qnorm((17-0.5)/n), qnorm((18-0.5)/n), qnorm((19-0.5)/n), qnorm((20-0.5)/n)) 
Sample_observation<-c(24.46, 25.61, 26.25, 26.42, 26.66, 27.15, 27.31, 27.54, 27.74, 27.94, 27.98, 28.04, 28.28, 28.49, 28.50, 28.87, 29.11, 29.13, 29.50, 30.88)
df<-data.frame(z_percentile, Sample_observation)    
print(df)
plot(z_percentile,Sample_observation)

par(old.par)
