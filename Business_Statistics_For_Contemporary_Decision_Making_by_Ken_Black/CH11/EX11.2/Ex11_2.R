# TUKEYs HSD Test : HSD = q*sqrt(MSE/n)  # q = critical value

a <- c(2.46,2.41,2.43,2.47,2.46)
b <- c(2.38,2.34,2.31,2.40,2.32)
c <- c(2.51,2.48,2.46,2.49,2.44)
d <- c(2.49,2.47,2.48,2.46,2.44)
e <- c(2.56,2.57,2.53,2.55,2.55)
df <- data.frame(a,b,c,d,e)
df


r = c(t(as.matrix(df))) # response data 
r 
f = c("a", "b", "c","d","e")   # treatment levels 
k = 5                    # number of treatment levels 
n = 5

tm = gl(k, 1, n*k, factor(f))   # matching treatments 
tm 

av = aov(r ~ tm)
av
b <- summary(av)
b

# From above anova analysis we get MSE value :
MSE = 0.000618
q = 5.29
n = 5
HSD = q*sqrt(MSE/n)
HSD



