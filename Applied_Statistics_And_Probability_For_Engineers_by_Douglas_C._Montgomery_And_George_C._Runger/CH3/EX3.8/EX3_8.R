#Sampling without replacement(Pg no. 72)

total = 850
unconforming = 50
conforming = total - unconforming

X0 = (conforming/total)*((conforming-1)/(total-1))
X1 = 2*(conforming/total)*(unconforming/(total-1))
X2 = (unconforming/total)*((unconforming-1)/(total-1))

F0 = round(X0, digits = 3)
F0
F1 = round(X0 + X1, digits = 3)
F1
F2 = X0 + X1 + X2
F2
cat(
"
F(x) = 0 -- { x < 0}
F(x) = ",F0," -- { 0 <= x < 1}
F(x) = ",F1," -- { 1 <= x < 2}
F(x) = ",F2," -- { 2 <= x}

")
#The values may slightly vary due to rounding off values