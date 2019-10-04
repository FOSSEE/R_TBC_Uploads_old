#equality of three praportion
#null hypothesis:p1=p2=p3 probability of crumbling is the same for all three materials
#alternative hypothesis:p1,p2and p3 or not equal
Crumbled<-c(41,27,22)
Remained_intact<-c(79,53,78)
loc=0.05
n=3
df=n-1
x.chi=qchisq(1-0.05,df)
#reject null hypothesis if X>x.chi
table<-rbind(Crumbled,Remained_intact)
chi_sq=chisq.test(table)
chi_sq
cat("Since chi_sq = 4.575 does not exceed 5.991, the null hypothesis cannot
be rejected")
