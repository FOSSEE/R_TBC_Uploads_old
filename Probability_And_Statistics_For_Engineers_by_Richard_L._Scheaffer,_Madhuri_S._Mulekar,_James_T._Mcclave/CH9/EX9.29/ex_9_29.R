
#Method of maximum liklihood

X <- c( 0.406, 2.343, 0.538, 5.088, 5.587, 2.563, 0.023, 3.334, 3.491, 1.267)
mean = mean(X)*10

#Given confidence interval=95%

alpha =1-0.95
a <- qchisq(alpha/2,df=2*(length(X)),lower.tail = F)
b <- qchisq(alpha/2,df=2*(length(X)))

cat(" We are about 95% confident that the true mean lifelength is between",2*mean/a, "and", 2*mean/b )
