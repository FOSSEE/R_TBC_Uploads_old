probability_light=0.50
probability_medium=0.30
probability_heavy=0.20
# probability that member is light , medium and heavy  and no books borrow
probability_0_light=0.60
probability_0_medium=0.15
probability_0_heavy=0.05
#  the probability that the member is a light purchaser and purchases no books in 3 months
p=(probability_light*probability_0_light)/((probability_light*probability_0_light)+(probability_medium*probability_0_medium)+(probability_heavy*probability_0_heavy))
print(p)