# confidence interval for indpendent sample
 
n1= 10
n2= 9
y1bar = 8.27
y2bar=6.78
s1=2.956
s2=2.565
# common standard deviation 
sp=sqrt(((n1-1)*s1*s1+(n2-1)*s2*s2)/(n1+n2-2))

# the t-percentile based on df for 95% confidence interval
tstar=qt( .975, df=18)
margin=tstar*sp*sqrt((1/n1)+(1/n2))
left_i=(y1bar-y2bar)-margin
right_i=(y1bar-y2bar)+margin
print("confidence interval is")
print(left_i)
print(right_i)
