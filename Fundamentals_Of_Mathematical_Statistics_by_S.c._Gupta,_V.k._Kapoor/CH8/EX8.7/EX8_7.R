#Page number--8.8
#Example number--8.7

#Probability of hitting target
p=1/4
q=1-p
#Probability that x hits in 7 shots
#P=choose(7,x)*(1/4)^x*(3/4)^7-x

#Part (i)
#Probability of hitting atleast 2 hits
P=1-(choose(7,0)*(1/4)^0*(3/4)^7-0+choose(7,1)*(1/4)^1*(3/4)^(7-1))
P

#Part (ii)
#Probability of atleast 1 hit in n shots
p=solve(log(3/4),log(1/3))
p
round(p)
sprintf("The required number of shots: %d",round(p))


