
#(Pg no. 150)

a = 8
b = 20
m = 16

mean = (a+(4*m)+b)/6
cat("mean =",round(mean,digits = 3))
alpha = ((mean-a)*((2*m)-a-b))/((m-mean)*(b-a))
cat("alpha =",round(alpha,digits = 3))
beta = (alpha*(b-mean))/(mean-a)
cat("beta =",round(beta,digits = 3))