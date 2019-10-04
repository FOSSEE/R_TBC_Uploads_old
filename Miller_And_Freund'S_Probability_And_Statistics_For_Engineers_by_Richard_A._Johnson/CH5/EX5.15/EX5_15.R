alpha=2
beta=0.1
#mean
mu=exp(1)^(alpha+((beta)^2)/2)
mu
cat("mean is",mu)
#variance
var=exp(1)^((2*alpha+beta^2))*(exp(1)^(beta^2)-1)
var
cat("variance is",var)
