#Example 12 chapter 5 page no 221
x45=0.31   #30%people under 45
x64=1-0.08
z1=qnorm(x45)
z2=qnorm(x64)
v=(64-45)/(z2-z1)
u=45-z1*v
cat("mean=",u," and standard deviation = ",v)
#answer given approximate in book
