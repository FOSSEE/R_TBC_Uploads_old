
#H0 : equal kill rates for the four chemicals
#H1 : at least two mixtures have different kill rates. 

dead = c(124,147,141,142)
not_dead = c(76,53,59,48)

observed =as.data.frame(rbind(dead,not_dead))
names(observed) <- c('Mix1','Mix2','Mix3','Mix4')

stat= chisq.test(observed)$statistic

alpha=0.05
compare=qchisq(1-alpha,df=3,lower.tail = F)

if(stat<compare){
  cat("Hypothesis is accepted");
} else{
  cat("Hypothesis is rejected")
}

# *chi-sq value =10.72 given in book is wrong
