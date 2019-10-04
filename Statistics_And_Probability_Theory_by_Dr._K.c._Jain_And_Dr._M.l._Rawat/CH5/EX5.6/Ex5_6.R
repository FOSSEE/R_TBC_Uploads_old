#Example 6 chapter 5 page no 203
u=1     #mean of uniform distribution
v=4/3     #variance of uniform distribution
b = (2*u+sqrt(12*v))/2
a = 2*u-b
pxlessthan0 = dunif(1,a,b)
print(pxlessthan0)
