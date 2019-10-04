# y denote the number of successes in the n sample trials,
# sample proportion
y=330
n=870
pie=y/n
sigma=sqrt((pie*(1-pie))/n)

alpha=0.05
z.alpha=qnorm(1-alpha)
error=z.alpha*sigma
#  the 90% confidence interval on the proportion of cancer
#patients who will survive at least 5 years
left_i=pie-error
right_i=pie+error
print(left_i)
print(right_i)


