#Semiconductor failures(Pg no. 47)

high = 0.20 #probability of high level of contamination
medium = 0.30 #probability of medium level of contamination
low = 0.50 #probability of low level of contamination
product_fail_given_high = 0.10
product_fail_given_medium = 0.01
product_fail_given_low = 0.001

product_fail = (product_fail_given_high*high)+(product_fail_given_medium*medium)+(product_fail_given_low*low)

cat(product_fail,"is probability that the product fails")