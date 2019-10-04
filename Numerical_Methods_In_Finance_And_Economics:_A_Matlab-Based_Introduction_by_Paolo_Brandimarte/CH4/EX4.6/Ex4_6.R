set.seed(64657)
rexp(1, 1/1)

EmpiricalDrnd <- function(values, probs, howmany) {
  cumprobs = cumsum(probs)
  N = length(probs)
  samples = matrix(0,howmany, 1)
  for (k in 1:howmany){
    loc=sum(runif(1)*cumprobs[N] > cumprobs) + 1;
    samples[k]=values[loc]
  }
  return(samples)
}

values=1:5
probs<-c(0.1, 0.2, 0.4, 0.2, 0.1)
samples=EmpiricalDrnd(values ,probs ,10000)
hist(x = samples)