a =c( 82, 114, 90, 80, 88, 93, 80, 105, 128, 90, 130, 110, 133, 130, 104, 156, 128, 151, 140 )
b =c(rep(1,8),rep(2,7),rep(3,4))

dat =data.frame(a,b)

x =lm(a~factor(b),data = dat)
s =summary(x)$sigma

# Bonferroni Method ,c=3
alpha =0.05
c=3
k=(alpha/2)/c
t = qt(1-k,df=16)

#Three intervals are constructed as follows:

a_b = mean(a[1:8]) - mean(a[9:15])
x1= t*s*sqrt(1/8 + 1/7)
cat("Interval muA - muB =", a_b-x1,a_b +x1)

a_c = mean(a[1:8]) - mean(a[16:19])
x2 =t*s*sqrt(1/8 + 1/4)
cat("Interval muA - muC =", a_c-x2,a_c +x2)

b_c = mean(a[9:15]) - mean(a[16:19])
x3 =t*s*sqrt(1/7 + 1/4)
cat("Interval muB - muC =", b_c-x3,b_c +x3)
