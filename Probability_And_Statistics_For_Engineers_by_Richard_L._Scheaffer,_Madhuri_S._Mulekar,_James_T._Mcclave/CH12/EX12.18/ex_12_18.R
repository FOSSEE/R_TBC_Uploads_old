#H0: there is no 3 factor interaction Duration*Defrost*Freeze effect on the quality.
#H1: 3 factor interaction Duration*Defrost*Freeze affects quality.


A= c(73,70,65,65,68,75,74,69,67,67,74,73)
B= c(75,71,69,70,69,68,76,72,69,72,81,61)
C= c(74,70,70,72,70,70,74,65,65,69,80,74)

obs= c(A,B,C)
freeze= c(rep(1,12),rep(2,12),rep(3,12))
defrost= c(rep(1:3,12))
a= c(rep("1 day",3),rep("8 days",3))

duration= c(rep(a,6))
dat=  data.frame(obs,freeze,defrost,duration)
d=  aov(obs~(factor(freeze)*factor(defrost)*factor(duration)),data = dat)

print("The Analysis of Variance Table is shown as follows:")

summary(d)

cat("pvalue =0.20507  is higher than any reasonable level of significance. Therefore, fail to reject the null hypothesis and conclude that there is no evidence of the presence of a 3-factor interaction. ")

x = lm(obs~(factor(freeze)*factor(defrost)*factor(duration)),data = dat)
print("Summary of fit is shown below:")
summary(x)

