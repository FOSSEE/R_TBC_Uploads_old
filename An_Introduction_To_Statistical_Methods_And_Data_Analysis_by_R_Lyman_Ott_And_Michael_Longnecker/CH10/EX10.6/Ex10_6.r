pie1=413/527
pie2=392/608
# The sample awareness proportion is higher in Wichita, so let's make Wichita region 1.
#The estimated standard error is
sigma=sqrt(((pie1*(1-pie1))/527)+((pie2*(1-pie2))/608))
print(sigma)
alpha=0.025
z.alpha=qnorm(1-alpha)
error=z.alpha*sigma
#  95% confidence interval 
left_i=(pie1-pie2)-error
right_i=(pie1-pie2)+error
print(left_i)
print(right_i)

