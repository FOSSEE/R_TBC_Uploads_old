#(a) List all possible outcomes in terms of success, S, repaired within one hour, and
#failure, F, not repaired within one hour.
list=c('FFF','FFS',' FSS',' SSS','FSF','SFS','SFF',' SSF')
cat("The Possible outcome is: ",list)
#(b) Find the probability distribution of the number of successes, X, among the
#3 repairs.
#X=0
cat("The Probability is: ",0.1*0.1*0.1)
#X=1
cat("The Probability is: ",3 * 0.009)
#X=2
cat("The Probability is: ",3*(0.1 * 0.9 * 0.9 ) )
#X=3
cat("The Probability is: ",0.9* 0.9* 0.9)

