#Ex11.6, Page 428
#Answers may vary slightly due to rounding off of values

#To create data frame
Tension<-rep(c("210","235","260","285"),6)
Player<-rep(c("1","2","3","4","5","6"),each=4)
Speed<-c(105.7,113.3,117.2,110.0,116.6,119.9,124.4,106.8,106.6,120.5,122.3,110.0,113.9,119.3,120.0,115.3,119.4,122.5,115.1,122.6,123.5,124.0,127.9,128.3)

df1<-data.frame(Tension,Player,Speed)
print(df1)

#To find mean for corresponding tension data
cat("\nTension mean values:\n")
m1<-tapply(df1$Speed,list(Tension),mean)
print(m1)

#To find mean of corresponding player data
cat("\nPlayer mean values:\n")
m2<-tapply(df1$Speed,list(Player),mean)
print(m2)

#To display ANOVA table
a<-aov(Speed~Tension+Player,data=df1)
print(a)
print(summary(a))