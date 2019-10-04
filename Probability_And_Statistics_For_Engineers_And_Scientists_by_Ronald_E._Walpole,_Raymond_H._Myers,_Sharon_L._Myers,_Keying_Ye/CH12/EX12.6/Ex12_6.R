
# Chapter 12
# Example 12.6 page no. 457 from the pdf..
# To Construct Confidence Interval for Mean Response..

y <-c(25.5,31.2,25.9,38.4,18.4,26.7,26.4,25.9,32.0,25.2,39.7,35.7,26.5)

x1 <- c(1.74,6.32,6.22,10.52,1.19,1.22,4.10,6.32,4.08,4.15,10.15,1.72,1.70)

x2 <- c(5.30,5.42,8.41,4.63,11.60,5.85,6.62,8.72,4.42,7.60,4.83,3.12,5.30)

x3 <- c(10.80,9.40,7.20,8.50,9.40,9.90,8.00,9.10,8.70,9.20,9.40,9.60,8.20)

dat <- data.frame(y,x1,x2,x3)

c <- lm(y~x1+x2+x3,data= dat)

newdat <- data.frame(x1=3,x2=8,x3=9)

d <- predict(c,newdat,interval = "confidence",level = 0.95,type = "response")

cat("The 95% confidence interval for the mean response when x1=3%,x2=8% and x3=9% is",d[2],d[3])

# the answer may vary slightly from the T.B




