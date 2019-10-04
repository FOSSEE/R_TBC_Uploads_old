weight<-c(72.2,67.8,78.0,64.4,76.3,72.3,73.1,71.7,66.2,63.3,85.4,67.4,
66.3,76.3,57.7,50.3,77.4,63.1,73.9,67.4,74.7,68.2,87.4,86.4,
69.4,58.0,63.3,72.7,73.6,68.8,63.3,63.3,73.0,64.8,73.1,70.9,
85.9,74.4,75.9,72.3,84.3,61.8,79.2,64.3,65.4,66.7,77.2,50.0,
70.3,90.4,63.9,62.1,68.2,55.1,52.6,68.5,55.2,73.5,53.7,61.7,
47.9,72.3,61.1,71.8,83.1,71.2,58.8,61.8,86.8,64.5,52.3,58.3,
65.9,80.2,75.1,59.9,62.3,48.8,64.3,75.4)
n = 80
mu=68.4 #pounds
sd = 9.6 #pounds
#(a) Find the probability of using 80 or more pounds of cheese.
1-pnorm((n-mu)/sd)
#Set a limit so that only 10 % of production runs have less than L pounds of cheese
Z0.1=qnorm(1-0.1)#probability closest to .1000
L = mu - sd*Z0.1
L #Pounds
#Determine a new mean for the distribution so that only 5 % of the runs have less than L pounds
Z0.05=1.645
mu = L + 9.6 * Z0.05
mu
cat("The mean must be increased by 3.5 pounds to decrease the percentage of units
below the limit L from 10% to 5%")