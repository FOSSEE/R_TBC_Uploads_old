
# Chapter 8 
# Example 8.11 page no. 250 from the pdf..
# Applications of t-distribution..

# mu 500, xbar= 518 , sample sd = 40,
# if t value between t(-0.05) and t(0.05) then the engineer is satisfied.

xbar <- 518

mu <- 500

sd <- 40

n <- 25

t_value = (xbar-mu)/(sd/sqrt(n))

cat("The engineer is satisfied if a sample of 25 batches yields a t value between",qt(0.05,df=24),"and",-qt(0.05,df=24))

cat("The t value is",t_value,"which is above the levels mentioned above so the p value is",pt(t_value,df=24,lower.tail = F),"so we conclde that the process produces a better product than the engineer thought.")


# the answer varies slightly due to approximation in book.




