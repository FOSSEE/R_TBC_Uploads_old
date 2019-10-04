alpha=0.05
m=4 #comparisons
alpha_l=alpha/m
F_aplha_l_1_25=qf(1-alpha_l,df1 = 1,df2 = 25)
print(F_aplha_l_1_25)
# We would then reject H0 if SSCi/MSError >=F_alpha_l_1_25
F1 = 13.71 # computed in 9.5
F2 = 8.48
F3 = 0.24
F4 = 1.42
#  we would declare contrast l1 and l2 significantly different from 0 because their F ratios are greater than 7.24.
