#page no. 321
#example 8-21

x_bar=110.12
v0=110
n=25    #number of times V is measured 

    #part (a)

sigma=0.4
z=2
q=(x_bar-v0)/(sigma/sqrt(n))
print(q)

cat("since", q, "is in the interval(-2,2), we accept H0")


    #part (b)

s=0.6
q=(x_bar-v0)/(s/sqrt(n))
print(q)
cat("since", q, "is in the interval(-2.06,2.06), we accept H0")