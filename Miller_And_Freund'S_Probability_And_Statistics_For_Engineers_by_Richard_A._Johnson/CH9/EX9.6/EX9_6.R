n1=n2=9
s1=0.4548
s2=0.1089
#Obtain a 98% confidence interval for Sigma_square2/Sigma_square1
df1=8
df2=8
F=qf(1-0.01,df1,df2)
F0.99=1/F
Int1=F0.99*(s2/s1)
Int2=F*(s2/s1)
message("Interval 1: ",Int1," and Interval 2: ",Int2)