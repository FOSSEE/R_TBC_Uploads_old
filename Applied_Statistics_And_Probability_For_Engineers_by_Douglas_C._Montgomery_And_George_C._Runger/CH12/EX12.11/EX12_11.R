#install.packages("matlib")
library(matlib)
#Wire Bond Strength Confidence Interval(Pg no. 515)

x1 = c(2,8,11,10,8,4,2,2,9,8,4,11,12,2,4,4,20,1,10,15,15,16,17,6,5)
x2 = c(50,110,120,550,295,200,375,52,100,300,412,400,500,360,205,400,600,585,540,250,290,510,590,100,400)
x3 = c(rep.int(1,25))
y = c(9.95,24.45,31.75,35.00,25.02,16.86,14.38,9.60,24.35,27.50,17.08,37.00,41.95,11.66,21.65,17.89,69.00,10.30,34.93,46.59,44.88,54.12,56.63,22.13,21.15)

X = matrix(c(x3,x1,x2),nrow = 25, ncol = 3, byrow = FALSE)
Y = matrix(c(y), nrow = 25, ncol = 1, byrow = FALSE)

X_t = t(X)

H = X%*%inv(X_t%*%X)%*%X_t
sample_var = 5.2352
e1 = 1.57
r1 = e1/sqrt(sample_var*(1-H[1,1]))
p = 3
MSe = 5.2352

D1 = ((r1^2)/p)*(H[1,1]/(1-H[1,1]))
D1 = round(D1, digits = 3)
D1