#  the probability that the first applicant having advanced training is found on the fifth interview = P(Y=5)
# using geomatric distribution
library(stats)
p=0.30
cat(" the probability that the first applicant having advanced training is found on the fifth interview is", dgeom(4,0.30) )
cat("Total cost of interviewing is ", 300/p)

# V(C)=(300^2)V(Y)

cat("V(C) is" , ((300^2)*(1-p))/(p^2))