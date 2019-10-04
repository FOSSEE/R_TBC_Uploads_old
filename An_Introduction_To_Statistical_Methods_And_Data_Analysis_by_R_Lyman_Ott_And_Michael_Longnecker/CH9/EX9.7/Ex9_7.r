F=5.96 # computed from 9.3 
alpha=0.05
MSError=.0153
F_value=qf(1-alpha,df1=4,df2 = 25)
# as the F >F_value
print(" we reject H0 and conclude that at least one of the population means differs from the rest")
t.alpha=qt(1-alpha/2,df=25)
LSD=t.alpha*(sqrt((2*MSError)/6))
print(LSD)
