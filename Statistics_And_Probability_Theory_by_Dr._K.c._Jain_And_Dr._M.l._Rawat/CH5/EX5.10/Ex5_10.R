#Example 10 chapter 5 page no 219
x40=0.3      #for x<=40
x50=0.3+0.33     # for x<=50
xmorethan50 = 0.37
z1=qnorm(x40)
z2=qnorm(x50)
v=(50-40)/(z2-z1)
u=40-z1*v
px50to60=pnorm(60,u,v)-pnorm(50,u,v)
cat("frequency in interval 50 to 60 is ",round(100*px50to60,digits = 0))
#book has error in answer. 