# Test Hypothesis about a population variance :
# X^2 = (n-1)*s^2/var , df = n-1

var = 25
n = 16
s_sq = 28.0625 # sample variance 
df = n-1

# Two tailed test and alpha = .10 it will be divided by 2 :
a <- .10/2

# we have two critical values of chi square : 

# 1st chi-sq value is a :
qchisq(a, df=15)

# 2nd chi-sq is 1-a :
qchisq(1-a, df=15)

# The decision rule is to reject the null hypothesis if the observed value 
# of the test statistic is less than 7.26093 or greater than 24.9958. 

X_sq = ((n-1)*s_sq)/var
X_sq

# This observed chi-square value is in the nonrejection region because
# chi_sq(.05)=7.26 < chi_sq(observed) = 16.83 < chi_sq(.95) = 24.9958.
# The company fails to reject the null hypothesis. The population variance 
# of overtime hours per week is 25.
