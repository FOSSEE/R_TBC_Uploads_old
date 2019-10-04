#Digital channel(Pg no. 75)

error_bits = c(0,1,2,3,4)
probability = c(0.656,0.2916,0.0486,0.0036,0.0001)
df = data.frame('error_bits' = error_bits, 'probability' = probability)

index = c(1:length(error_bits))

u = weighted.mean(error_bits, probability) #expectation

v = weighted.mean((error_bits-u)^2,probability) #variance


cat("Expectation E(X) =",round(u, digits = 1))
cat("Variance V(X) =",v)
#The answer may slightly vary due to rounding off values