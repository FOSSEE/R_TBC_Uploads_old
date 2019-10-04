#Example 52 chapter 1 page no. 45
P_G = 1/3 #prob of guess
P_U = 1/6   # prob unfair means
P_S = 1 - P_G -P_U  #answer bu skill
P_c_when_G = 1/4
P_c_when_U = 1/8
P_c_when_S = 1
cat("prob that answer by skill",P_S*P_c_when_S/(P_c_when_U*P_U + P_c_when_G*P_G +
                                                  P_S*P_c_when_S))
