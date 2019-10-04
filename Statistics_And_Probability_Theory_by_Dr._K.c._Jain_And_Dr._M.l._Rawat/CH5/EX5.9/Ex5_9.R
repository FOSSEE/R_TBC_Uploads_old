#Example 9 chapter 5 page no 218
A=0.58    # under 75
B=0.38    # from 75 to 80
C=0.04    # above 80
z1=qnorm(A)
z2=0-qnorm(C)   #for z greater than z2
v=(80-75)/(z2-z1)
u=75-z1*v
cat("mean=",u," and standard deviation = ",v)
#book has variance error of 0.27 and mean has value 0.06 more 
