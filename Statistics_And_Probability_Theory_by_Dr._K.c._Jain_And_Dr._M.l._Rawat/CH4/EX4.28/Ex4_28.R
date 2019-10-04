#Example 28 chapter 4 page no 191
x=c(0:10)
f=c(1,4,15,22,21,20,8,6,2,0,1)
xbar=x%*%f/sum(f)
px=dpois(x,xbar)
expectedfreq=round(px*sum(f),0)
df=data.frame(x,expectedfreq)
print("expected freq are")
print(df)
