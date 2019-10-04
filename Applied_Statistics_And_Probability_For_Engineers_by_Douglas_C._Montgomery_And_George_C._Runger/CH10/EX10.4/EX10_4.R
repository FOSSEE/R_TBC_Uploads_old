#Aluminum Tensile Strength(Pg no. 380)

X1bar = 87.6
X2bar = 74.5
std_dev1 = 1.0
std_dev2 = 1.5
n1 = 10
n2 =12
alpha = 0.1

z_alpha = qnorm(alpha/2,0,1,lower.tail = FALSE)

lim1 = X1bar - X2bar - (z_alpha * sqrt(((std_dev1^2)/n1)+((std_dev2^2)/n2)))
lim2 = X1bar - X2bar + (z_alpha * sqrt(((std_dev1^2)/n1)+((std_dev2^2)/n2)))

cat("90% CI is",round(lim1, digits = 2),"<= u - u0 <=",round(lim2, digits = 2))