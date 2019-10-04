#Page number--7.31
#Example number--7.12

#S be total number of successes
n=600         #Number of times die thrown 
p=1/6;q=5/6
ES=n*p
VS=n*p*q

#Using Chebychev's inequality
#P{|S-ES|<k*s.d}>=1-1/k^2        #s.d--->Standard deviation
#P{100-k*sqrt(500/6)<S<100+k*sqrt(500/6)}>=1-1/k^2
#comparing lower limit with 80
k=solve(sqrt(500/6),20)
k
#P{80<=S<=120}
P=1-1/k^2
sprintf("Probabilities of getting 80 to 120 sixes: %f",P)