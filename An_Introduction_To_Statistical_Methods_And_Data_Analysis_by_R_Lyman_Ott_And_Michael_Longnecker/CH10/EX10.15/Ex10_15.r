 #  odds of a randomly chosen person carrying HIV
p=.001/.009
#  occurrence of a positive test result causes the odds to change to
p_hiv=.001
p_positive_hiv=.95
p_nothiv=.999
p_positive_nothiv=.02
P_occurencepositive=(p_hiv*p_positive_hiv)/(p_nothiv*p_positive_nothiv)
print(P_occurencepositive)

# The odds of carrying HIV do go up given a positive test result, from about
#.001 (to 1) to about .0475 (to 1). 