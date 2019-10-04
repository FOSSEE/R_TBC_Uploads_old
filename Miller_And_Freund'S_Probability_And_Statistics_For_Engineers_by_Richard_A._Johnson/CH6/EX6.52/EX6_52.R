n = 20
mu=40 #mg/l
xbar = 46 
s = 9.4 #mg/l
df=n-1
t0.01=qt(1-0.01,df)
t0.01
t=(xbar-mu)/(s/n^0.5)
message("t value is: ",t)
P=1 - pt(t,19)
message("probability is: ",P)
print("Sinces the t value exceed t0.01 there for we reject the claim")

