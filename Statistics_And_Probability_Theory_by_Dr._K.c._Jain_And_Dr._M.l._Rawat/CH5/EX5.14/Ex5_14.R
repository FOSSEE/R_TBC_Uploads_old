#Example 14 chapter 5 page no. 227
u=0
sd=3
v=9*9+16*9   #3x+4y=5  and 3x+4y=10
px5to10 = pnorm(10,u,sqrt(v)) - pnorm(5,u,sqrt(v))
print(px5to10)
# value of answer is 0.0023 more in book