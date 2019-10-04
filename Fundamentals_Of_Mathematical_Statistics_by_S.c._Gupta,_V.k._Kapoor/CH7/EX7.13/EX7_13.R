#Page number--7.32
#Example number--7.13

#By proof of Bernoulli's law of large numbers
#P{|X/n-p|<e}<=1-1/(4*n*e^2)
p=0.5
#X/n lie between 0.4 and 0.6
e=0.1
#We want the probability to be atleast 0.9
n=solve(0.1,1/0.04)
sprintf("Required number of tosses: %f",n)