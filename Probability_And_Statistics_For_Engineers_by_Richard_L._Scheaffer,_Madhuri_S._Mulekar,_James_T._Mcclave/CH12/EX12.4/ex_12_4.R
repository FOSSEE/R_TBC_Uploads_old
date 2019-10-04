#H0 : muAN = muLC = muEC
#H1 : the mean counts differ for the tree metals


a =c(10,9,9,9,10,11,14,11,8,11,7,6,9,7,8,10,12,14,9,8,8,9,8,7,10,
     14,12,15,14,10,17,16,11,13,14,15,11,16,12,6,13,20,17,10,16,10,13,12,17,13,
     42,46,44,39,50,34,42,40,36,37,46,42,43,50,32,41,37,49,28,34,34,38,43,39,42)

b =c(rep(1,25),rep(2,25),rep(3,25))

dat =data.frame(a,b)

# the analysis must be done on the transformed data because of the lack of homogeneity of variances. 

x =lm(sqrt(a)~factor(b),data = dat)
summary(x)
c <- aov(sqrt(a)~factor(b),data = dat)
summary(c)

cat(" the p-value <0.001 so, we reject the null hypothesis of equality of mean square root count for three metals, and conclude that at least two mean square root counts are different. ")