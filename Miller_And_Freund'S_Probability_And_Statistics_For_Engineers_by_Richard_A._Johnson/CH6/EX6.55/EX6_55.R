#F distribution
#left-hand tail probability
#a)by first method
df1=20#first degree of freedom
df2=10#second degree of freedom
data=qf(0.95,df1,df2)#quantile 
Area=1/data
cat("Value under th area 0.95 is",Area)
