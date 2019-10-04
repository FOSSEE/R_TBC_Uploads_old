#There are two types of catalyst for the chemical reaction
Catalyst1<-c(0.63,2.64,1.85,1.68,1.09,1.67,0.73,1.04,0.68)
Catalyst2<-c(3.71,4.09,4.11,3.75,3.49,3.27,3.72,3.49,4.26)
# 95% confidence interval for delta = mu1 - mu2
x =mean(Catalyst1)
s1 = sd(Catalyst1)
y =mean(Catalyst2)
s2=sd(Catalyst2)
df=11
t0.025 =qt(1-0.025,df)
t.test(Catalyst1,Catalyst2)
cat("The mean product volume for the second catalyst is
greater than that of the first catalyst by 1.880 to 2.982 gallons")