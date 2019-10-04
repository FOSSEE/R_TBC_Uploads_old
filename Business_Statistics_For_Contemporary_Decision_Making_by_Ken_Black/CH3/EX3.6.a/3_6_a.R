# Mean absolute deviation :

x<- c(55,100,125,140,60)
n = 5

# a = abs(x - x_bar), where x_bar = sum(x)/n 
a <- c(41,4,29,44,36)

x <- cbind(x,a)
View(x)

# MAD :
mean_dev <- sum(a)/n
mean_dev

