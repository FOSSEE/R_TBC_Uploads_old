
# Chapter 10
# Example 10.6 page no. 344 from the pdf..
# The 2 Sample Pooled t-test..

# 2 sample t- test
n1 <- 12

n2 <- 10

x1 <- 85

x2 <- 81

s1 <- 4

s2 <- 5

# Null H0- mu1-mu2= 2
# alternate H1 mu1-mu2 >2
# using 2 sample pooled t-test..

deg_f <- n1+n2-2

sp <- sqrt((s1*s1*(n1-1)+s2*s2*(n2-1))/deg_f)

p_value <- 1-pt(((x1-x2-2)/(sp*sqrt(1/n1+1/n2))),deg_f)

if(p_value < 0.05){
  
  print("Since the p_value is less than 0.05 we reject the null hypothesis that mu1-mu2=2")
  
}else{
  
  print("Since the p_value is more than 0.05, we cannot reject H0 and conclude that material 1 wear exceeds that of 2 by more than 2 units")
  
}



