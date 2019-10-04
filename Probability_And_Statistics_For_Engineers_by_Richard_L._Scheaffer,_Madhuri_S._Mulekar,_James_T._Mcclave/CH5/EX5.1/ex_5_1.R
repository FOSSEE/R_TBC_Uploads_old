a <- function(x){
  
(0.8^x)*(0.2^(2-x))
}

# The Distribution..
cat("The probability distribution for x=0 is",a(0))

cat("The probability distribution value for x=1 is",2*a(1))

cat("The probability distribution for x=2 is",a(2))
