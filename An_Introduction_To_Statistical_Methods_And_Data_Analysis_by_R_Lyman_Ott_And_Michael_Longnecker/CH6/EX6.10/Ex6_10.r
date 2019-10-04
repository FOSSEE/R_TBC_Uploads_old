# one sided test
sigma=2.4
delta=1.5
z_alpha=qnorm(0.05)
z_beta=qnorm(0.10)
sample_size=2*(sigma^2)*((z_alpha+z_beta)^2)/(delta^2)
print(sample_size)