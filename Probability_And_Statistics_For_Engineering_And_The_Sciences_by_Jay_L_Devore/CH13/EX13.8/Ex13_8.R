#Ex13.8, Page 546
#Answers may vary slightly due to rounding off of values

#From Ex13.7
Thickness<-c(220,220,220,220,370,370,370,370,440,440,440,440,680,680,680,680,860,860,860,860)
Strength<-c(24.0,22.0,19.1,15.5,26.3,24.6,23.1,21.2,25.2,24.0,21.7,19.2,17.0,14.9,13.0,11.8,12.2,11.2,6.6,2.8)
df<-data.frame(Thickness,Strength)
relation<-lm(df$Strength~poly(df$Thickness,2),data=df)
a<-summary(aov(relation,data=df))
print(a)

n<-20
k<-2
SSE<-a[[1]][, 'Sum Sq'][2]
SST<-a[[1]][, 'Sum Sq'][1]+a[[1]][, 'Sum Sq'][2]
R2<-1-(SSE/SST)
print(paste("R-squared value:",R2))

#To find variance
sigma2<-SSE/(n-(k+1))
print(paste("sigma^2:",sigma2))
print(paste("sigma:",sqrt(sigma2)))