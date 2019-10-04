#install.packages("matlib")
library(matlib)

#Wire Bond Strength Confi dence Interval(Pg no. 507)

x1 = c(2,8,11,10,8,4,2,2,9,8,4,11,12,2,4,4,20,1,10,15,15,16,17,6,5)
x2 = c(50,110,120,550,295,200,375,52,100,300,412,400,500,360,205,400,600,585,540,250,290,510,590,100,400)
x3 = c(rep.int(1,25))
y = c(9.95,24.45,31.75,35.00,25.02,16.86,14.38,9.60,24.35,27.50,17.08,37.00,41.95,11.66,21.65,17.89,69.00,10.30,34.93,46.59,44.88,54.12,56.63,22.13,21.15)

X = matrix(c(x3,x1,x2),nrow = 25, ncol = 3, byrow = FALSE)
Y = matrix(c(y), nrow = 25, ncol = 1, byrow = FALSE)

X_t = t(X)
XX_t = X_t %*% X
Xt_y = X_t %*% Y
XtX = X_t%*%X
inv_XtX = inv(XtX)
beta = inv(XX_t) %*% Xt_y

C11 = inv_XtX[2,2]
sample_var = 5.2352
t = qt(0.025,22,lower.tail = FALSE)

min = beta[2,1] - (t*sqrt(sample_var*C11))
max = beta[2,1] + (t*sqrt(sample_var*C11))

cat("the interval is(",min,",",max,")")

# The answer may slightly vary due to rounding off values