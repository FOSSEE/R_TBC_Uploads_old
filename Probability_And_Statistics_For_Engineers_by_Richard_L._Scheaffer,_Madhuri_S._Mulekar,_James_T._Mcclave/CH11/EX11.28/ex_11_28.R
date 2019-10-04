#Logistic Fit of Test by Pressure

pressure =c(3943,4163,3812,3888,3926,3900,3942,3732,4480,3940,4143,4146,3962,4335,3822,4035,3914,3853,4030,3967,3848,4007,4077,3907,4251)
res =c(1,0,1,1,0,1,1,1,0,0,0,0,0,0,1,1,1,1,0,1,1,0,0,1,0)

dat=data.frame(pressure,res)
modal =glm(res~pressure,family = "binomial",data = dat)

summary(modal)
anova(modal,test = "Chisq")

