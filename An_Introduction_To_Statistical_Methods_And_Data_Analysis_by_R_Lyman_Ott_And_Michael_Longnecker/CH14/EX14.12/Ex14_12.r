alpha=0.05
q.alpha=qtukey(1-alpha,3,15)
n=10
sw2=10.28 # calculated in 14.10
W=q.alpha*(sqrt(sw2/n))
W
sample_means=c(25.1,23.5,37.8)
# by ordering sample mean from lowest to highest , we rank display panels by 2 1 3 
# if diffrence between means > W then we declare them to be significantly different from each other