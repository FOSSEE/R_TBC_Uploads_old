#Parts from suppliers(Pg no. 94)

supplier1 = 100 #parts from local supplier
supplier2 = 200 #parts from distant supplier

#P(X=4)
A = (choose(supplier1,4)*choose(supplier2,0))/choose(supplier1+supplier2,4)

#P(X>=2)
B = 0.0
for (i in 2:4)
{
  B = B + (choose(supplier1,i)*choose(supplier2,4-i))/choose(supplier1+supplier2,4)
}

#P(X>=1) == 1 - P(X=0)
temp = ((choose(supplier1,0)*choose(supplier2,4))/choose(supplier1+supplier2,4))
C = 1 - temp

cat(A,"is the probability that all 4 parts are from the local supplier")
cat(B,"is the probability that two or more parts in the sample are from the local supplier")
cat(C,"is the probability that at least one part in the sample is from the local supplier")

#The answer may slightly vary due to rounding off values
