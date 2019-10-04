# Statistics for Management and Economics by Gerald Keller
# Chapter 6: PROBABILITY
# Example 6.8 on Pg. 196
# Probability of Passing the Bar Exam 

#Given:
#P(pass rate for first-time Bar Exam takers) = 0.72
#P(pass rate for second-time Bar Exam takers who failed first time) = 0.88

pass_1 = 0.72
fail_1 = 1-pass_1

pass2_Given_fail1 = 0.88
#fail_and_pass = P(Fail [on first exam] and Pass [on second exam])

fail1_and_pass2 = pass2_Given_fail1 * fail_1
#Answer: P(Fail [on first exam] and Pass [on second exam]) = 0.2464

#We need probability that a randomly selected law school graduate becomes a lawyer i.e., 
#we need to find probability of passing the first or second exam.

pass = pass_1 + fail1_and_pass2

cat("probability that a randomly selected law school graduate becomes a lawyer:", pass)

#End