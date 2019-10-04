#Conditional Probabilities for Mobile Response Time(Pg no. 162)

P3_1 = 0.25
P3_2 = 0.2
P3_3 = 0.05
P3_4 = 0.05

f3 = P3_1 + P3_2 + P3_3 + P3_4

cat("P(Y=1|X=3) =",round((P3_1/f3),digits = 3))
cat("P(Y=2|X=3) =",round((P3_2/f3),digits = 3))
cat("P(Y=3|X=3) =",round((P3_3/f3),digits = 3))
cat("P(Y=4|X=3) =",round((P3_4/f3),digits = 3))

#The answer may slightly vary due to rounding off values
