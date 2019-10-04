#Semiconductor contamination(Pg no. 46)

high = 0.20 #probability of high level of contamination
not_high = 1 - high #probability of not high level of contamination
product_fail_given_high = 0.10
product_fail_given__not_high = 0.005

product_fail = (product_fail_given_high*high)+(product_fail_given__not_high*not_high)

cat(product_fail,"is probability that the product fails")




