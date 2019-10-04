#Camera flashes(Pg no. 91)

p = 0.2
r = 3
x = 5

#P(X<=5)
B = pnbinom((x-r),r,p)

cat(B,"is the probability that the third failure is obtained in five or fewer tests")
#The answer may slightly vary due to rounding off values