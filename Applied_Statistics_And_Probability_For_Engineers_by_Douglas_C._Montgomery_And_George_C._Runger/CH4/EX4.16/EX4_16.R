#Shaft diameter(Pg no. 125)

mean = 0.2508 #inches
sd = 0.0005 #inches

# P(0.2485<X<0.2515)
p1 = 1 - pnorm(0.2485, mean ,sd)

p2 = 1 - pnorm(0.2515, mean, sd)

result = p1 - p2

cat(result,"proportion of shafts conforms to specifications")

new_mean = 0.2500

p3 = 1 - pnorm(0.2485, new_mean ,sd)

p4 = 1 - pnorm(0.2515, new_mean, sd)

result1 = p3 - p4
cat(result1,"proportion of shafts conforms to specifications")