#Ex1.9, Page 17

Hits_per_game<-0:27
No_of_games<-c(20,72,209,527,1048,1457,1988,2256,2403,2256,1967,1509,1230,834,569,393,253,171,97,53,31,19,13,5,1,0,1,1)
sum1<-sum(No_of_games)
Relative_frequency<-round(No_of_games/sum1,digits=4)
df1<-data.frame(Hits_per_game,No_of_games,Relative_frequency)
print(df1)

#Proportion of games with atmost 2 hits
f1<-0
for(i in Hits_per_game){
  if(i<=2){
    f1<-f1+df1[i+1,3]
  }
}
print(paste("Proportion of games with atmost two hits:",f1))

#Proportion of games with between 5 and 10 hits
f2<-0
for(j in Hits_per_game){
  if(j>=5 && j<=10){
    f2<-f2+df1[j+1,3]
  }
}
print(paste("Proportion of games with between 5 and 10 hits:",f2))

par(mfrow=c(1,2))
plot(Hits_per_game,Relative_frequency,type="h",xlim=c(0,20),main="Histogram of hits/game")
barplot(Relative_frequency,width=1,space=0,xlim=c(0,25),main="Histogram of hits/game",xlab="Hits/game",ylab="Relative frequency")

