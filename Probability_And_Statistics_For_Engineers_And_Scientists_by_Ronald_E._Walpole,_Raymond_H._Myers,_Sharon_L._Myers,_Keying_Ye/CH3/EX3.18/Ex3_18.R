
# Chapter 3
# Example 3.18 Page no.99 from the pdf..
# Conditional Distribution Of a Random Variable.

# to find the conditional joint probability distribution of the given function given the specific conditions
# Refer Example 3.14 from the pdf..
a <- function(x,y){
  
  choose(3,x)*choose(2,y)*choose(3,2-x-y)/choose(8,2)
  
}

# given y=1 to find P(x=0|y=1)

# P(x=0|y=1)= a(x,y)/h(y), h(y)>0

h1 <- sum(a(0:2,1))

# to find a(x,1)= a(x,1)/h1

b <- function(x){
  
  a(x,1)/h1
  
}

cat("The conditional probability function under the condition y=1 is","  ")

c <- c(b(0),b(1),b(2))

d <- t(data.frame(0:2,c))

rownames(d) <- c("X","f(x|1)")

d














