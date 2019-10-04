# Z formula to test the difference in Population Proportion :
# z = ((p1_c - p2_c)-(p1-p2)) / sqrt((p_c*q_c)*((1/n1)+(1/n2)))
# p_c =((n1*p1_c)+(n2*p2_c))/(n1+n2)
# q_c = 1 - p_c

n1 = 100
n2 = 95
p1_c = .24
p2_c = .41

p_c =((n1*p1_c)+(n2*p2_c))/(n1+n2)
p_c
q_c = 1 - p_c
q_c
# p1 - p2 = 0

z = ( (p1_c - p2_c) - (0) ) / sqrt( (p_c*q_c) * ( (1/n1) + (1/n2) ) )
z

#  If a one-tailed test had been used,zc would have been z.01 = 2.33, 
# and the null hypothesis would have been rejected. If alpha had been .05, 
# zc would have been z. 025 = , and the null hypothesis would have been rejected.