#Page.No 9.16 - 9.17

#To determine the limits of the scores 
# To find the z- score 
Z1<-scale(60,center = 50,scale = 5)
Z2<-scale(40,center = 50,scale = 5)

#To find percentage of cases
ans<-(pnorm(60, mean=50, sd=5)-pnorm(40, mean=50, sd=5))*100

cat("Percentage of cases lie between",Z2," and",Z1,"is",ans,"%")
