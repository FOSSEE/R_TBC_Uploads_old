p1 =c(68.5,72.8,72.5,74.5,72.0,75.5,70.5,69.5,65.0)
p2 =c(73.0,80.1,72.5,75.0,81.5,70.0,72.5,84.5,66.5)
p3 =c(68.7,72.0,73.1,74.6,76.0,76.0,74.7,76.0,70.5)

obs =c(p1,p2,p3)
pressure =c(rep(30,9),rep(70,9),rep(100,9))
temp  =c(rep(1:3,9))
a =c(rep("1 hour",3),rep("2 hours",3),rep("3 hours",3))
time =c(rep(a,3))
dat=  data.frame(obs,pressure,temp,time)
d=  aov(obs~(factor(pressure)*factor(temp)*factor(time)),data = dat)

print("The Analysis of Variance Table is shown as follows:")

summary(d)

