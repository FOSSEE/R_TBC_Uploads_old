#given sigma=1, n=25
sigma =1

#a
n = 25
sd <= sigma/sqrt(n)

cat(" the probability that the sample mean will be within 0.3 ounces of the true population mean is", 
    pnorm(.3/sd) - pnorm(-0.3/sd))

#b

# given, P(-0.3<|X-mu|<0.3) = 0.95
x <- (1-0.95)/2 +0.95

ll <- qnorm(x,lower.tail = F)
ul <- qnorm(x,lower.tail = T)

n<- (ul/0.3)^2
cat("Value of n so that the sample mean will be within 0.3 ounces of the population mean with probability 0.95 is ",n)
