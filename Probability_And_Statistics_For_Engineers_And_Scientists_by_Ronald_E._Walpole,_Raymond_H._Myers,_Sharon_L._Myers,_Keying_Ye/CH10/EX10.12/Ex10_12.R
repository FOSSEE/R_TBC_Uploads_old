
# Chapter 10 
# Example 10.12 page no. 366 from the pdf..
# One and Two Sample Tests Concerning Variance..

# null - sig^2 = 0.81
# alternaitve - sig^2 > 0.81
# alpha = 0.05

n <- 10

sig <- 0.9

s <- 1.2

chi.sq <- (n-1)*s*s/(sig*sig)

p_value <- pchisq(chi.sq,df=9 ,lower.tail = F)

cat("The p value is",p_value,"there is evidence that sig>0.9")


