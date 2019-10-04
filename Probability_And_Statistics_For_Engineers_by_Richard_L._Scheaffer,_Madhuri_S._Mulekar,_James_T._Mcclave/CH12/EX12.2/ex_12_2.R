#H0 : the mean stopping times at the three types of signals are the same i.e mu1 =mu2 =mu3

#H1 : The mean stopping times for at least two types of signals are different.


a =c(36.6,39.2,30.4,37.1,34.1,17.5,20.6,18.7,25.7,22.0,15.0,10.4,18.9,10.5,15.2)
b =c(rep(1,5),rep(2,5),rep(3,5))
dat =data.frame(a,b)

c <- aov(a~factor(b),data = dat)
summary(c)

#From summary table we obtain data as:
cat("SST = ",1202.6)
cat("SSE = ",137.83)
cat("TSS = ",1202.6+137.83)

#F value=52.35
compare = qf(1-0.05,2,12)

cat("Since F0.05(2,12) < Fvalue, we  we reject the null hypothesis of equal means and conclude that at least two types of signals have different mean stop times")
