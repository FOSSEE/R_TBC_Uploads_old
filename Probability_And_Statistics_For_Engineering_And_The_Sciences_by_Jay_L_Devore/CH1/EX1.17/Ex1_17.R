#Ex1.17, Page 36

Car<-1:11
xi<-c(27.3,27.9,32.9,35.2,44.9,39.9,30.0,29.7,28.5,32.0,37.6)

xibar<-mean(xi)
s<-sd(xi)

print(paste("The size of the representative deviation from the mean,",round(xibar,digits=2),"is roughly",round(s,digits=2),"mpg"))
