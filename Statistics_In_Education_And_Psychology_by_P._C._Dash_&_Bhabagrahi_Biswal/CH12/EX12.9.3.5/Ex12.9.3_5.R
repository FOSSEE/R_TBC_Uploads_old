#Page.No 12.16- 12.18

# A function created to find t-ratio
t.test <- function(m1,m2,s1,s2,n1,n2,equal.variance=FALSE)
{
  {
    se1 <-s1/sqrt(n1-1)
    se2<-s2/sqrt(n2-1)
    df <- n1+n2-1
    seD<-sqrt((se1^2)+(se2^2))
  }
  t <- (m1-m2)/seD 
  dat <- c(m1-m2, seD, t, 2*pt(-abs(t),df))    
  names(dat) <- c("Difference of means", "Std Error", "t", "p-value")
  return(dat) 
}

t.test(62,57,9.7,6.8,30,25)

ct<-abs(qt(0.05/2,53))
cat("Since the p-value <0.05 and the table value of t @ 0.05 level of significance is ",ct,"which is less than the obtained t-ratio",2.199)
"Therefore the mean difference is statistically significant @ 0.05 level of significance"

#### Another Method by using the library function

library(BSDA)
result<-tsum.test(mean.x = 62,s.x = 9.7,n.x = 30,
                  mean.y = 57,s.y = 6.8,n.y = 25)

t_ratio<-result$statistic

cat("The calculated t value is",t_ratio)

critical_t<-abs(qt(0.05/2,53))

if(t_ratio > critical_t)
{
  cat("Reject null hypothesis and it is significant")
} else
{
  cat("Cannot reject null hypothesis and their is No significance")
}

