#Testing hypotheses concerning mean life for preceding example
T10=43410 
alpha=0.4#failure rate is 0.40 failure per thousand hours
mu0=1000/alpha#1000 for thousand hourse
Chi0.05=qchisq(1-0.05,20)#degree of fredom =20
#Null hypothesis: mu = mu0
#Alternative hypothesis: mu > mu0 hours
#Level of significance: = 0.05
#Criterion: Reject the null hypothesis if f Tr >(mu0*Chi0.05)/2
#Calculating the value
result=(mu0*Chi0.05)/2
result
cat("Since T10 = 43,410 exceeds the critical value, we must reject the
null hypothesis, concluding that the mean lifetime exceeds 2,500 hours, or,
equivalently, that the failure rate is less than 0.40 failure per thousand hours")
