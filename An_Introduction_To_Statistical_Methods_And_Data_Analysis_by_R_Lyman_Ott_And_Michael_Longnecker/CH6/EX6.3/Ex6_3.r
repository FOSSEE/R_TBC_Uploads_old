# confidence interval for indpendent sample

n1= 12
n2= 12
y1bar = 26.58
y2bar=39.67
s1=14.36
s2=13.86
# solving part c
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

# solving part  a and b
t=(y1bar-y2bar)/((sp)*sqrt((1/n1)+(1/n2)))
print(t)
# crtitical value
alpha= 0.05 
df=n1+n2-2
t.alpha=qt(0.05, df=22)
if(t<=t.alpha){
  print(" We will reject H0")
}else{
  print("we will fail to reject H0 (no significant evidence")
}

