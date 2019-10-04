y1bar=25.1
y2bar=23.5
y3bar=37.8

MSE=10.278
sigma=sqrt(MSE)

# crtical value
alpha = 0.025
z.alpha=qt(1-alpha,df=15)

# For panels 2 and 3, we have nt = 10 observations per panel, thus confidence interval will be
n=10
error=sigma*z.alpha*sqrt(2/n)
#  thus confidence interval will be
left_i=(y3bar-y2bar)-error
right_i=(y3bar-y2bar)+error
print("confidence interval is")
print(left_i)
print(right_i)