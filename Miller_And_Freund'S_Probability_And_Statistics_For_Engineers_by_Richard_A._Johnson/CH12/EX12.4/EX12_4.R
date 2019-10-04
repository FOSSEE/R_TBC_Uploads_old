#EXAMPLE 4
#There are 4 different types of paper,
#We measuring the strength of paper by repeating the process
Paper1<-c(2.8,0.75,3.70)
Paper2<-c(0.00,-0.1,3.45)
Paper3<-c(1.15,1.75,4.20)
Paper4<-c(1.88,2.65,2.70)
#Mean of different observation
x1=mean(Paper1)
x2=mean(Paper2)
x3=mean(Paper3)
x4=mean(Paper4)
#Null Hypothesis:-alpha1=alpha2=aplha3=alpha4=0 , There is no differnce in two method of testing paper strength
#Alternative Hypothesis:-alpha's not equal to zero 
l.o.c=0.5
pf(1-0.5,3,8)
strength<-c(Paper1,Paper2,Paper3,Paper4)
group = rep(1:4,rep(3, 4))
data = data.frame(y = strength, group = factor(group))
fit = lm(y ~ group, data)
anova(fit)
print("Since F doesn't exceed the value of 1 there for we doesn't reject null hypothesis")
mean=mean(strength)
sd=sd(strength)
df3=length(strength)-1
t0.025=qt(1-0.025,11)
#95% confidence interval for mean is
Int1=mean+t0.025*sd/sqrt(12)
Int2=mean-t0.025*sd/sqrt(12)
cat("The Confidence Interval For Mean is:",c(Int2,Int1))
