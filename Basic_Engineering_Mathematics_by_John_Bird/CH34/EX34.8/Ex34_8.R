#page no.= 366

b = 74 #no. of brass washers
s = 86 #no. of steel washers
a = 40 #no. of aluminium washers
t = b+s+a # total no. of washers

probability = (s/t)*((s-1)/(t-1))*((s-2)/(t-2))#probability that all three are steel washers
print(probability)
