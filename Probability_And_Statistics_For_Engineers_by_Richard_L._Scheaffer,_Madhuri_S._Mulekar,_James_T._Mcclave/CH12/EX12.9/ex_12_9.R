a =c(36.6,39.2,30.4,37.1,34.1,17.5,20.6,18.7,25.7,22.0,15.0,10.4,18.9,10.5,15.2)
b =c(rep(1,5),rep(2,5),rep(3,5))
dat =data.frame(a,b)

x =lm(a~factor(b),data = dat)
s =summary(x)$sigma

# Bonferroni Method ,c=3
alpha =0.05
c=3
k=(alpha/2)/c
t = qt(1-k,df=12)

#a
#Three intervals are constructed as follows:

a_b = mean(a[1:5]) - mean(a[6:10])
x1= t*s*sqrt(1/5 + 1/5)
cat("Interval muPre - muSA =", a_b-x1,a_b +x1)

a_c = mean(a[1:5]) - mean(a[11:15])
x2 =t*s*sqrt(1/5 + 1/5)
cat("Interval muPre - muFA =", a_c-x2,a_c +x2)

b_c = mean(a[6:10]) - mean(a[11:15])
x3 =t*s*sqrt(1/5 + 1/5)
cat("Interval muSA - muFA =", b_c-x3,b_c +x3)

#b
y = mean(a[11:15])
d =s/sqrt(5)
cat("a 95% confidence interval for the mean stop time of the best signal i.e FA =",
    y - d," - ",y+d)

