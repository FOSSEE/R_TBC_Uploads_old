#Ex10.1, Page 392
#Answers may vary slightly due to rounding off of values

Type_of_box<-c(1,2,3,4)
CS1<-c(655.5,789.2,737.1,535.1)
CS2<-c(788.3,772.5,639.0,628.7)
CS3<-c(734.3,786.9,696.3,542.4)
CS4<-c(721.4,686.1,671.7,559.0)
CS5<-c(679.1,732.1,717.2,586.9)
CS6<-c(699.4,774.8,727.1,520.0)
Mean<-c(NULL)
SD<-c(NULL)

#To find mean of observations
for(i in 1:4){
  sum<-CS1[i]+CS2[i]+CS3[i]+CS4[i]+CS5[i]+CS6[i]
  mean<-sum/6
  Mean[i]<-mean
}
#To find standard deviation of values
for(i in 1:4){
  s<-(CS1[i]-Mean[i])^2+(CS2[i]-Mean[i])^2+(CS3[i]-Mean[i])^2+(CS4[i]-Mean[i])^2+(CS5[i]-Mean[i])^2+(CS6[i]-Mean[i])^2
  sd<-sqrt(s/5)
  SD[i]<-sd
}

data<-data.frame(Type_of_box,CS1,CS2,CS3,CS4,CS5,CS6,Mean,SD)
print(data)

#To find grand mean of mean values
tot_mean<-0
for(i in 1:4){
  tot_mean<-tot_mean+Mean[i]
}
tot_mean<-tot_mean/4
print(paste("Grand mean:",tot_mean))

par(mfrow=c(1,2))
#To create boxplots of the data
#First element of each CS column gives us the compression strength of one box
a<-c(CS1[1],CS2[1],CS3[1],CS4[1],CS5[1],CS6[1])
b<-c(CS1[2],CS2[2],CS3[2],CS4[2],CS5[2],CS6[2])
c<-c(CS1[3],CS2[3],CS3[3],CS4[3],CS5[3],CS6[3])
d<-c(CS1[4],CS2[4],CS3[4],CS4[4],CS5[4],CS6[4])
boxplot(a,b,c,d)
title(main="Boxplots for original data")

#Altering data in sample 2 by adding 120 to every value in Sample 4
e<-c(NULL)
for(i in 1:6){
  e[i]<-d[i]+120
}
boxplot(a,b,c,e)
title(main="Boxplots for altered data")

