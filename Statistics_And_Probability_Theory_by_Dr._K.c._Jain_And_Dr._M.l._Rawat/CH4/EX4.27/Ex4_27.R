#Example 27 chapter 4 page no 190
x=c(0:4)
days=c(21,18,7,3,1)
xbar=x%*%days/sum(days)
px=dpois(x,xbar)
expectedfreq=round(px*sum(days),2)
df=data.frame(x,expectedfreq)
print("expected freq are")
print(df)
