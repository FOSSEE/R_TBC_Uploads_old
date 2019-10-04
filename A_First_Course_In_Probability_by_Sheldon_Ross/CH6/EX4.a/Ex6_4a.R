#install.packages("MASS")
require("MASS")
#note pxi denotes Px(i)

p00 = 0.4
p01 = 0.2
p10 = 0.1
p11 = 0.3

py1 = p01 + p11

px0 = p01/py1

px1 = p11/py1

print(fractions(px0))

print(fractions(px1))
