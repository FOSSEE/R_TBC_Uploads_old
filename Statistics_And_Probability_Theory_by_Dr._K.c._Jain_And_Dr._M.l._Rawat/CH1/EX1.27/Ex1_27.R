#Example 27 chapter 1 page no 30
P_A = 4/36    # prob of sum=5 on rolling 2 dice
P_B = 6/36     #prob of sum=7 on rolling 2 dice
lemda = 1-(P_A+P_B)    # prob neither 5 nor 7 as the sum
cat("prob of sum=5 to come before",P_A/(1-lemda))
