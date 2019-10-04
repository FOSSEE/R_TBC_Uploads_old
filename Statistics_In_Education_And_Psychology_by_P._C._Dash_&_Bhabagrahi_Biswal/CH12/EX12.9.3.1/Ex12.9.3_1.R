#Page.No 12.9- 12.11

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

Mn.P<-70  # Mean of Pre- test
Mn.E<-67  # Mean Of end - test
SD.P<-6   # Sd of pre- test 
SD.E<-5.8 # sd of end- test
N.P<-30   # No.of.Observations of Pre- test
N.E<-30   # No.of.Observations of end- test
r<-.82    # correlation coefficient

t.test(Mn.P,Mn.E,SD.E,SD.P,N.P,N.E,r)

critical_t<-abs(qt(0.01/2,29))

cat("The p-value <0.01 and the table value of t @ 0.01 level of significance is ",critical_t,"which is less than the obtained t-ratio")

"Therefore the mean difference is significant @ 0.01 level of significance"

