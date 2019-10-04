#H0 : beta1 =1
#H1 : beta1 not=1

NAS <- c(25.1,20.9,25.5,21.3,25.4,20.9,38.5,31.6,63.8,52.6,61.8,51.2)
AS<-   c(35.7,33.6,35.0,33.2,35.7,33.1,52.5,48.7,80.8,75.3,78.3,73.2)
pol <- data.frame(NAS,AS)

line_eq <- summary(lm(AS~NAS,data=pol))
t_value <-(coefficients(line_eq)[2,1] -1)/coefficients(line_eq)[2,2]


cat("Since the T value is",t_value," greater than ",qt(1- 0.025,df=12-2,lower.tail = F)," suggesting strong evidence that beta1 < 1.0")
