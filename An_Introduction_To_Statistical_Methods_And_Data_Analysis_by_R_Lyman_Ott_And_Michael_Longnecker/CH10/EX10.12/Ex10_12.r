moderate=c(15,32,18,5)
mildly=c(8,29,23,18)
severe=c(1,20,25,22)
all_ages=c(sum(moderate),sum(mildly),sum(severe))
all_servetiles=c(24,81,66,45)
grand_total=216
# For row 1,the estimated expected number of occurrences 
E11=(sum(moderate)*all_servetiles[1])/grand_total
print(E11)
E12=(sum(moderate)*all_servetiles[2])/grand_total
print(E12)
E13=(sum(moderate)*all_servetiles[3])/grand_total
print(E13)
E14=(sum(moderate)*all_servetiles[4])/grand_total
print(E14)

# For row 2,the estimated expected number of occurrences 
E21=(sum(mildly)*all_servetiles[1])/grand_total
print(E21)
E22=(sum(mildly)*all_servetiles[2])/grand_total
print(E22)
E23=(sum(mildly)*all_servetiles[3])/grand_total
print(E23)
E24=(sum(mildly)*all_servetiles[4])/grand_total
print(E24)

# For row 3,the estimated expected number of occurrences 
E31=(sum(severe)*all_servetiles[1])/grand_total
print(E31)
E32=(sum(severe)*all_servetiles[2])/grand_total
print(E32)
E33=(sum(severe)*all_servetiles[3])/grand_total
print(E33)
E34=(sum(severe)*all_servetiles[4])/grand_total
print(E34)

dt=data.frame(cbind(E11,E12,E13,E14),cbind(E21,E22,E23,E24),cbind(E31,E32,E33,E34))
dt
