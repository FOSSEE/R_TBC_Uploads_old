#Example 3 chapter 1
lot = 25
r = 5         #takes 5 motors for sample
ways_selecting_good_motors = length(combn(20,5))/5   #lot containing 5 defective
total_ways = length(combn(25,5))/5
P_selecting_5defective_lot = ways_selecting_good_motors/total_ways
print(P_selecting_5defective_lot)
P_rejecting_1defective_lot = length(combn(1,1))*length(combn(24,4))/4 / total_ways
print(P_rejecting_1defective_lot)
