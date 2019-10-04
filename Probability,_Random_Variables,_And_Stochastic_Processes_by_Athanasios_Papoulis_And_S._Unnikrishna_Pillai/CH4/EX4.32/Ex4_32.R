#page no. 116
#example 4-32

k=0:4
n=20000   #number of components in spacecraft (given)
p=10^-4   #probability of any one component defective (given)
lambda=n*p

p_danger_mission=1-(exp(-2)*sum((lambda^k)/factorial(k)))
print(p_danger_mission)
