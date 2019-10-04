
# given, mean =10, sd=10

# area for the region P(a<=X<=b) =0.95
# area for the region P(X<=b)
x <- (1-0.95)/2 +0.95

ll <- qnorm(x,lower.tail = FALSE)
ul <- qnorm(x,lower.tail = T)
cat("Therefore , Z lies between", ll," to ",ul)

y =function(n){
  a <- ( 10 + (ll*(10/sqrt(n)))) 
  b <- ( 10 + (ul*(10/sqrt(n))))
  output <- list(a,b)
  return(output)
}

output1 <- y(25)
cat("interval when n=25 is ")
cat("lower limit")
output1[1]
cat("Upper limit")
output1[2]


output2 <- y(50)
cat("interval when n=50 is ")
cat("lower limit")
output2[1]
cat("Upper limit")
output2[2]


output3 <- y(100)
cat("interval when n=100 is ")
cat("lower limit")
output3[1]
cat("Upper limit")
output3[2]

