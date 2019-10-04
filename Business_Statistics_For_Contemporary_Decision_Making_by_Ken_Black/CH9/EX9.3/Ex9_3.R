# z test of a population proportion :
# z = sample_prop - population_prop/sqrt(population_prop*q/n)

n = 550
x = 115
sample_prop = 115/550
population_prop = .17
q = 1- population_prop

# test statistic value of z :
z1 = (sample_prop - population_prop)/sqrt((population_prop*q)/n)
z1

# critical value of z :
z = qnorm(.05,lower.tail=FALSE)
z

# critical sample proportion :
sample_prop_c = z * sqrt(population_prop*q/n) + population_prop
sample_prop_c