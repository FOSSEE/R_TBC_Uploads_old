a <- function(x){
  
  ((factorial(6)/factorial(6-x))*(factorial(4)/factorial(4-(2-x))))/(factorial(10)/factorial(8))
  
}

# The Distribution..
cat("The probability distribution for x=0 is",a(0))

cat("The probability distribution value for x=1 is",2*a(1))

cat("The probability distribution for x=2 is",a(2))



