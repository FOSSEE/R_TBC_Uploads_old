#Example 19 chapter 5 page no 230
n=12     #coin tossed 12 times
p=1/2
q=1-p
u=n*p   #mean of binomial distribution
sd=sqrt(n*p*q)
patmost4heads = pnorm(4.5,u,sd)
pexact4heads = pnorm(4.5,u,sd)-pnorm(3.5,u,sd)
cat("prob exact 4 head ",pexact4heads,"\nprob of atmost 4 head ",patmost4heads)
