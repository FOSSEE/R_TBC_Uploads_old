#Example 34 chapter 1 page no 33
P_A = 0.7    # prob of A speak truth
P_B = 0.65     #prob of B speak truth
P_AandB = P_A*P_B
P_AandBbar = P_A*(1-P_B)
P_AbarandB = (1-P_A)*P_B
P_AbarandBbar = (1-P_A)*(1-P_B)
cat("prob of A and B in contradiction state",P_AandBbar+P_AbarandB)
