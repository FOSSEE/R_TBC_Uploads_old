#Null hypothesis: p1 = p2 = p3 = p4 no difference  in the proportions of superconductors produced
#Alternative hypothesis: p1, p2, p3, and p4 are not all equal
Superconductors<-c(31,42,22,25)
Failures<-c(19,8,28,25)
loc=0.05
n=4
df=n-1
Chi_squr0.05=qchisq(1-0.05,df)
Chi_squr0.05
#Criterion: Reject the null hypothesis if Chi_squr > 7.815, the value of Chi_squr0.05
#for 4 - 1 = 3 degrees of freedom.
table<-rbind(Superconductors,Failures)
table
chisq.test(table)
cat("Since 19.50 greatly exceeds 7.815, we reject the null hypothesis of
equal proportions at the 5% level of significance")