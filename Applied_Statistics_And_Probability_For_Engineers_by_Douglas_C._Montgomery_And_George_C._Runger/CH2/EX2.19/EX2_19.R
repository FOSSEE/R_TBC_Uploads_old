#install.packages("MASS")
library(MASS)

#Semiconductor Wafers(Pg no. 35)

total = 940
high = 358
center = 626
high_and_center = 112
high_or_center = (high+center-high_and_center)
ans = high_or_center/total
ans = fractions(ans)
print(ans)

#The answer might slightly vary due to reducing of values