ss<-c(26.7,25.2,32.3,32.8,28.6,29.3,26.1,24.2)
gas<-factor(c("reg","reg","ho","ho","reg","reg","ho","ho"))
auto<-factor(c("tw","tw","tw","tw","fw","fw","fw","fw"))
dat<-data.frame("value"=ss,"Gas"=gas,"Automobile"=auto)
dat
results<-lm(dat$value ~ dat$Gas + dat$Automobile + dat$Gas*dat$Automobile, data=dat)
anova(results)