#Semiconductor wafers(Pg no. 51)

contamination = 0.01
no_contamination = 1- contamination
wafers = 15

total_probability = no_contamination^wafers

cat("The probability that no large particles are found is ",total_probability)

#The answer may slightly vary due rounding off values