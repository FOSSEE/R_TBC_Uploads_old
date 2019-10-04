#install.packages("matlib")
library(matlib)

#Airplane Sidewall Panels(Pg no. 518)

x1 = c(20,25,30,35,40,50,60,65,70,75,80,90)
x2 = c(400,625,900,1225,1600,2500,3600,4225,4900,5625,6400,8100)
x3 = c(rep.int(1,12))
y = c(1.81,1.70,1.65,1.55,1.48,1.40,1.30,1.26,1.24,1.21,1.20,1.18)

X = matrix(c(x3,x1,x2),nrow = 12, ncol = 3, byrow = FALSE)
Y = matrix(c(y), nrow = 12, ncol = 1, byrow = FALSE)

X_t = t(X)

XX_t = X_t %*% X

XX_t

Xt_y = X_t %*% Y

Xt_y

beta = inv(XX_t) %*% Xt_y
beta

cat("the fitted regression model is y =",beta[1,1],"",beta[2,1],"x +",-beta[3,1],"x^2")