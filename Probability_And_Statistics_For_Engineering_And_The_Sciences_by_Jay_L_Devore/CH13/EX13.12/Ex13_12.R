#Ex13.12, Page 558
#Answers may vary slightly due to rounding off of values

Observation<-1:30
Force<-c(30,40,30,40,30,40,30,40,30,40,30,40,30,40,30,40,25,45,35,35,35,35,35,35,35,35,35,35,35,35)
Power<-c(60,60,90,90,60,60,90,90,60,60,90,90,60,60,90,90,75,75,45,105,75,75,75,75,75,75,75,75,75,75)
Temperature<-c(175,175,175,175,225,225,225,225,175,175,175,175,225,225,225,225,200,200,200,200,150,250,200,200,200,200,200,200,200,200)
Time<-c(15,15,15,15,15,15,15,15,25,25,25,25,25,25,25,25,20,20,20,20,20,20,10,30,20,20,20,20,20,20)
Strength<-c(26.2,26.3,39.8,39.7,38.6,35.5,48.8,37.8,26.6,23.4,38.6,52.1,39.5,32.3,43.0,56.0,35.2,46.9,22.7,58.7,34.5,44.0,35.7,41.8,36.5,37.6,40.3,46.0,27.8,40.3)

m1<-lm(Strength~(Force+Power+Temperature+Time))

#To form estimated regression equation
Force<-35  #Force
Power<-75  #Power
Temperature<-200 #Temperature
Time<-20  #Time

new<-data.frame(Force,Power,Temperature,Time)
y_cap<-predict(m1,new)
print(paste("Point prediction of strength at (35,75,200,20):",y_cap,"gm"))