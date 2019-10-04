# General Law of Multiplication : P (X or Y) = P(X)*P(Y|X) = P(Y)*P(X|Y)

Total_emp = 140 
supervisor = 30
Married_emp = 80
Pb_S_M = .20  # P(S|M) i.e. married employees are supervisors

#  probability that the employee is married :
Pb_M = Married_emp/Total_emp
Pb_M

#  probability that the employee is married and is a supervisor :
Pb_M_s <- Pb_M * Pb_S_M
Pb_M_s

# 11.43% of the 140 employees are married and are supervisors



