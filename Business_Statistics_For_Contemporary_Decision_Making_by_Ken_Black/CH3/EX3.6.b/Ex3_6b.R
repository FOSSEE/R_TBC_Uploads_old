# Variance and stanadard deviation :

x<- c(55,100,125,140,60)
n = 5

# a = abs(x - x_bar), where x_bar = sum(x)/n
a <- c(41,4,29,44,36)

# b = (x - x_bar)^2
b <- c(1681,16,841,1936,1296)

y <- cbind(x,a,b)
View(y)

# Variance :
var(x)

# standard deviation :
sd(x)

