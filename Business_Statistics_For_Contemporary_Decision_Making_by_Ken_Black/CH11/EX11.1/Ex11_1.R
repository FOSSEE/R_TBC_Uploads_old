# One Way ANOVA SSE, SSc, SST values :
# SSC = sum(nj*(xj_b-x_b)^2)
# SSE = sum(sum((xij-xj_b)^2))
# SST = sum(sum((xij-x_b)^2))

a <- c(29,27,30,27,28)
b <- c(32,33,31,34,30)
c <- c(25,24,24,25,26)
df <- data.frame(a,b,c)
df

r = c(t(as.matrix(df))) # response data 
r 
f = c("a", "b", "c")   # treatment levels 
k = 3                    # number of treatment levels 
n = 5

tm = gl(k, 1, n*k, factor(f))   # matching treatments 
tm 

av = aov(r ~ tm)
av
summary(av)
