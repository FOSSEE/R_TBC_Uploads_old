
# Chapter 6
# example 6.8 page no. 182 from the pdf..
# Applications of Normal Distribution..


# given distribution of life of bulb - normal, mean= 800, sd=40hrs

cat("The probability that a bulb burns between 778 and 834 hours is",pnorm(834,800,40)-pnorm(778,800,40))


# making a visual of distribution
# Optional not compulsory..
x <- seq(680,920,length=200)
y <- dnorm(x,800,40)
plot(x,y,type="l")
abline(v = c(778,834))
