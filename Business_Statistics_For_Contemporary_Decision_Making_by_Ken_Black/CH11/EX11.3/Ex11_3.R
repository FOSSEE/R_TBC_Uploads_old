# Formula for computing Randomized Block Design for SSE, SSC, SSR, SST
# SSC = n*sum((xj_b-x_b)^2)
# SSR = C*sum((xi_b-x_b)^2)
# SSE = sum(sum((xij-xj_b-xi_b+x_b)^2))
# SST = sum(sum((xij-x_b)^2))

a <- c(3.47,3.43,3.44,3.46,3.46,3.44)
b <- c(3.40,3.41,3.41,3.45,3.40,3.43)
c <- c(3.38,3.42,3.43,3.40,3.39,3.42)
d <- c(3.32,3.35,3.36,3.30,3.39,3.39)
e <- c(3.50,3.44,3.45,3.45,3.48,3.49)
df <- data.frame(a,b,c,d,e)
df


r = c(t(as.matrix(df))) # response data 
r 
f = c("a", "b", "c","d","e")   # treatment levels 
k = 5                    # number of treatment levels 
n = 6

blk = gl(n, k, k*n)             # blocking factor 
blk 

tm = gl(k, 1, n*k, factor(f))   # matching treatments 
tm 

av = aov(r ~ tm + blk)
av
b <- summary(av)
b



