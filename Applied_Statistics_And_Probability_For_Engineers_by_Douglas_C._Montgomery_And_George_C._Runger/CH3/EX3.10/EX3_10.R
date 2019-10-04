#Marketing(Pg no. 75)

B_revenue1 = 7 # in million dollars
B_probability1 = 0.3

B_revenue2 = 2 # in million dollars
B_probability2 = 0.7

u = B_revenue1*B_probability1 + B_revenue2*B_probability2 
#expectation in million dollars

v = ((B_revenue1-u)^2)*B_probability1 + ((B_revenue2-u)^2)*B_probability2
#variance in million dollars squared

sd = sqrt(v)

cat("Expectation E(Y) =",u)
cat("Variance V(Y) =",v)
cat("Standard Deviation SD(Y) =",sd)
#The answer may slightly vary due to rounding off values