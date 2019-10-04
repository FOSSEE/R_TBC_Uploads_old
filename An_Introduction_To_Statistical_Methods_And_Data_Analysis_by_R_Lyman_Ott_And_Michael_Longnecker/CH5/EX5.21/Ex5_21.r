# large scale approximation
n<-25
alpha<-0.05
z.half.alpha=qnorm(1-alpha/2)
C_alpha2_n=(n/2)-z.half.alpha*sqrt(n/4)
print(C_alpha2_n)