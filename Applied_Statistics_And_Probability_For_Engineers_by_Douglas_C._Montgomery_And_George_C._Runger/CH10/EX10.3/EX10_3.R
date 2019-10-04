#Paint Drying Time Sample Size(Pg no. 379)

alpha = 0.05
beta = 0.10
delta = 10
delta0 = 0
std_dev1 = std_dev1 = 8

z_alpha = qnorm(alpha,0,1,lower.tail = FALSE)
z_alpha
z_beta = qnorm(beta,0,1,lower.tail = FALSE)
z_beta

n = ((z_alpha+z_beta)^2 * (std_dev1^2 + std_dev2^2))/(delta-delta0)^2
n = round(n)
n