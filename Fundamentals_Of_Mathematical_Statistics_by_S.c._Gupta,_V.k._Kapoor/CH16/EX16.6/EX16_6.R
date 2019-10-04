#Page number--16.13
#Example number--16.6

n=22
x=153.7
s=17.2
u=146.3

#H0::Null Hypothesis ------> the advertising campaign is successful
#H1::Alternative Hypothesis--->u>146.3 (Right tail)

t=(x-u)/sqrt(s^2/(n-1))
t 				# Answer of value of t is wrong
sprintf("H0 is rejected")
