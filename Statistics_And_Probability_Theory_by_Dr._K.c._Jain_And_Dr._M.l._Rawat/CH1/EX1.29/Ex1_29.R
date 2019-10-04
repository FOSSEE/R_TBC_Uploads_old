#Example 29 chapter 1 page no 30
P_A=1/3    # prob that A hits the target
P_B=1/5
cat("prob that both hits the target",P_A*P_B)
cat("prob of atleast one hit the target",P_A+P_B-P_A*P_B)
cat("prob of no one hit the target",1-(P_A+P_B-P_A*P_B))
