# z test of a population proportion :
# z = sample_prop - population_prop/sqrt(population_prop*q/n)

n = 400
x = 378
  sample_prop = x/n
population_prop = .909
q = 1- population_prop

# statistic value of z :
z1 = (sample_prop - population_prop)/sqrt((population_prop*q)/n)
z1
