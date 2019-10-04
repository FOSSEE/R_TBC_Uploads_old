
# Chapter 10
# Example 10.9 page no. 362 from the pdf..
# One Sample Test on a Single Proportion..

# given H0 - p=0.7
# H1 alternative - p!=0.7

# test staistic - binomial 

x <- 8   # no. of heat pumps installed in sample

n <- 15   # no. of randomly selected homes..

# it is a binomial variable and 2 sided hypothesis test..
p_value <- pbinom(x,n,0.7)*2

if(p_value > 0.10){
  
  cat("As the p value is",p_value,"there is insufficient reason to doubt the builder's claim so cannot reject null hypothesis")
  
}else{
  
  print("The evidence supports alternative hypothesis and builder claim should be rejected")
  
}