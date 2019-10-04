#Customer Sample(Pg no. 96)

p = 0.7 #P(A)
n = 50 #no.of sample suctomers

#P(X>45)
B = 1 - pbinom(45,50,p)

cat(B,"is the probability that X>45 have purchased from the corporation in the last three months")
#The answer may slightly vary due to rounding off values