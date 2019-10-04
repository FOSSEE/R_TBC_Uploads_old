#Page.No 12.18- 12.20

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

t.test(100,105,10,10,50,50)
n1<-50
n2<-50
df<-n1+n2-1

ct<-abs(qt(0.05/2,df))

cat("Since the p-value <0.05 and the table value of t @ 0.05 level of significance is ",ct,"which is less than the obtained t-ratio",2.199)
"Therefore the mean difference is statistically significant @ 0.05 level of significance"

#### Another Method by using the library function

library(BSDA)
result<-tsum.test(mean.x = 100,s.x = 10,n.x = 50,
                  mean.y = 105,s.y = 10,n.y = 50)

t_ratio<-abs(result$statistic)

critical_t<-abs(qt(0.05/2,53))

if(t_ratio > critical_t)
{
  cat("Reject null hypothesis and it is significant")
} else
{
  cat("Cannot reject null hypothesis and their is No significance")
}


