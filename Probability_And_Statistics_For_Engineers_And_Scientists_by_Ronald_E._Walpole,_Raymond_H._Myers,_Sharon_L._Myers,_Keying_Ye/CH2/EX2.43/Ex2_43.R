# Chapter 2.
# Example 2.43 from the pdf..
# Bayes Rule..

# given different parameters to find which plan was most likely used and thus responsible..
# to find P(Pj\D) for j = 1,2,3..

# a vector of P(Pj) for j = 1,2,3..
a <- c(0.30,0.20,0.50)

# a vector of P(D|Pj) for j = 1,2,3..
b <- c(0.01,0.03,0.02)

# Bayes Rule Formula..
f <- function(x){
  
  a[x]*b[x]/sum(a*b)
  
}

cat("The value of P(Pj|D) for j = 1,2,3 is",f(1:3))

cat("We can see that for plan 3 has the highest conditional probability, hence a defective for a random product is most likely the result of the use of plan 3")


# Some Problems are not solved because they are one and the same of what I have solved just numbers are changed and they are easy too..
