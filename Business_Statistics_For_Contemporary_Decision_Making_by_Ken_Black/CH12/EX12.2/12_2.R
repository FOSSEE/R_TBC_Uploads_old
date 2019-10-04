# Residual Analysis :

Hospitals <- c(1,2,3,4,5,6,7,8,9,10,11,12)
x <- c(23,29,29,35,42,46,50,54,64,66,76,78)
y <- c(69,95,102,118,126,125,138,178,156,184,176,225)
for(i in 1:12){
  x_sq <- x*x
}
print(x_sq)

for(i in 1:12){
  xy <- x*y
}
print(xy)

x1 <- cbind(x,y,x_sq,xy)

n = 12

b1 = ((sum(x*y))-((sum(x)*sum(y))/n))/((sum(x^2))-(sum(x)^2/n))
b1 

b0 = (sum(y)/n)-b1*(sum(x)/n)
b0

# y_c = 30.91 + 2.23 * x
y_c = b0 + b1*x
y_c
x1 <- cbind(x1,y_c)

Residual <- y-y_c
Residual

x1 <- cbind(x1,Residual)
View(x1)

sum(Residual)

hist(Residual)