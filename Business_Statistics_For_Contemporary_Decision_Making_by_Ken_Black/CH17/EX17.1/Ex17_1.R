#  Mann-Whitney U test :

Total_emp_comp <- c(18.75,19.80,20.10,20.75,21.64,21.90,22.36,22.96,23.45,23.88,24.12,24.85,25.30,25.50,26.19)
Rank <- c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)
Group <- c("H","H","H","H","E","H","H","H","E","E","E","E","E","E","E")
Total_emp_comp <- data.frame(Total_emp_comp,Rank,Group)
Total_emp_comp

W1 = 1+2+3+4+6+7+8
W1
W2 = 5+9+10+11+12+13+14+15
W2
U1 = (7)*(8) + ((7)*(8))/2 - W1
U1
U2 = (7)*(8) + ((8)*(9))/2 - W2
U2

# Using Wilcox test :
wilcox.test(Total_emp_comp ~ Group, data = Total_emp_comp,exact = FALSE)

#Because U2 is the smaller value of U, we use U=3 as the test statistic for Table A.13.
# Because it is the smallest size, let n1=7; n2=8.

# Because the p -value is less than a = .05, the null hypothesis is rejected.