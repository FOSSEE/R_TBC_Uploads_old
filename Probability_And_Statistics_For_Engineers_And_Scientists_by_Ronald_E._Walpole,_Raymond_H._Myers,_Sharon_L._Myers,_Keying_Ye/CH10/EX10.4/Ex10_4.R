
# Chapter 10
# Example 10.4 page no. 338 from the pdf..
# Test Concerning a Single Mean for Single Sample..

# given 
# H0 = 8kg
# H1 != 8kg

alpha <- 0.01


n <- 50

sd <- 0.5

m <- 7.8

sd1 <- sd/sqrt(n)

# two sided hypothesis test..

p_value <- 2*pnorm((m-8)/sd1)

if(p_value < 0.01){
  
  print("Since the p_value is less than 0.01 we reject the null hypothesis that mu= 8kg")
  
}else{
  
  print("Since the p_value is more than 0.01 there is not enough evidence to claim the alternative hypothesis, so evidence supports mu can be 8")
  
}