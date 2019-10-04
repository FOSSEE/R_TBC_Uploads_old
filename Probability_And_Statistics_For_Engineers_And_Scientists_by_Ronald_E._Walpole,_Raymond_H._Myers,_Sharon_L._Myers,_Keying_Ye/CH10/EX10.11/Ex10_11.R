
# Chapter 10
# Example 10.11 page 364 from the pdf..
# Two Sample Tests On 2 Proportions..

# hypothesis testing on 2 proportion..using z test
# Null- H0 p1=p2
# alternate - H1 = p1>p2

# information - 
x1 <- 120

x2 <- 240

n1 <- 200

n2 <- 500

# to find the estimate..
p_hat <- c(x1/n1,x2/n2)

pooled_p <- (x1+x2)/(n1+n2)

p_value <- 1-pnorm((p_hat[1]-p_hat[2])/(sqrt((pooled_p*0.49)*(1/n1+1/n2))))

cat("Since the p_value is",p_value,"we reject the null hypothesis and conclude that town voters favouring the proporsal are higher than county voters")

# this problem can also be solved directly using prop.test(c(120,240),c(200,500),alternative="greater"), but this test uses chi square test method and the T.B solved it with z-test..
# If you want to explore it write this code into your console -
# prop.test(c(120,240),c(200,500),alternative = "greater")



