# Page.No 12.11 - 12.13

# A function created to find t-ratio
t.test <- function(m1,m2,s1,s2,n1,n2,r,equal.variance=FALSE)
{
  {
    se1 <-s1/sqrt(n1-1)
    se2<-s2/sqrt(n2-1)
    df <- n1-1
    seD<-sqrt((se1^2)+(se2^2)-2*r*se1*se2)
  }
  t <- (m1-m2)/seD 
  dat <- c(m1-m2, seD, t, 2*pt(-abs(t),df))    
  names(dat) <- c("Difference of means", "Std Error", "t", "p-value")
  return(dat) 
}


Mn.P<-88  # Mean of Pre- test
Mn.E<-85  # Mean Of end - test
SD.P<-16  # Sd of pre- test 
SD.E<-12  # sd of end- test
N.P<-64   # No.of.Observations of Pre- test
N.E<-64   # No.of.Observations of end- test
r<-.5    # correlation coefficient

t.test(Mn.P,Mn.E,SD.E,SD.P,N.P,N.E,r)

ct<-abs(qt(0.05/2,63))

cat("The p-value > 0.05 and the table value of t @ 0.05 level of significance is ",ct,"which is greater than the obtained t-ratio")
"The mean difference is significant"

