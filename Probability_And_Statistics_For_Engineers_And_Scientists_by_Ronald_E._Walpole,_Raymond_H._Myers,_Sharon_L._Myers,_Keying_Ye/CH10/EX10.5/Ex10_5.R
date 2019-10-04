
# Chapter 10
# Example 10.5 page no. 340 from the pdf..
# The t-statistic for a test on a single mean when Variance is Unknown..

# given H0- mean = 46kWh
# H1 - mean < 46kWh

alpha <- 0.05

n <- 12 

# using t-staistic

m <- 42

sd <- 11.9

sd1 <- sd/sqrt(n)

# one sided testing
p_value <- pt((m-46)/sd1,n-1)


if(p_value < 0.05){
  
  print("Since the p_value is less than 0.05 we reject the null hypothesis that mu= 46kWh")
  
}else{
  
  print("Since the p_value is more than 0.05, we cannot reject H0 and conclude that the average no. of kWh used is not significantly less than 46")
  
}
