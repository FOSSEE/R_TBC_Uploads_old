#Digital channel continuation(Pg no. 76)

error_bits = list(0,1,2,3,4)
probability = list(0.656,0.2916,0.0486,0.0036,0.0001)

index = c(1:length(error_bits))
u = 0.00 #expectation
for (i in index) {
  u = u + (((as.double(error_bits[i]))^2)*as.double(probability[i]))
}

cat("Expectation E[h(X)] =",u)