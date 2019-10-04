#Propellant Burning Rate Type II Error(Pg no. 326)

n = 25
std_dev = 2
alpha = 0.05
z = qnorm(alpha/2,0,1,lower.tail = FALSE)
lim1 = z - (sqrt(n)/std_dev)
lim2 = -z - (sqrt(n)/std_dev)
beta = pnorm(lim1,0,1) - pnorm(lim2,0,1)
beta

beta2 = 0.10
z1 = qnorm(alpha/2,0,1,lower.tail = FALSE)
z2 = qnorm(beta2,0,1,lower.tail = FALSE)
new_sample_size = (((z1+z2)^2)*(std_dev^2))/1^2
new_sample_size = round(new_sample_size)
cat("new n =",new_sample_size)
