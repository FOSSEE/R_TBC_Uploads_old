
# Chapter 18
# example 18.7 page no. 716, from the pdf..
# to find the 95% bayesian interval for mu..given the various parameters.

mu_o <- 800

sig_o <- 10

n <- 25

sig <- 100

x <- 780

mu <- (n*x*sig_o^2 + mu_o*sig^2)/(n*sig_o^2+sig^2)

sd <- sig_o*sig/sqrt(n*sig_o^2+sig^2)

cat("The 95% Bayesian interval for mu is given by",mu+qnorm(0.025)*sd,"to",mu-qnorm(0.025)*sd)


