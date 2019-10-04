#(Pg no. 168)

#P(X2 = 0)
P_0 = 0.4

#P(X2 = 1)
P_1 = 0.3

#P(X2 = 2)
P_2 = 0.2

#P(X2 = 3)
P_3 = 0.1

x = c(0,1,2,3)

E = weighted.mean(x,c(P_0,P_1,P_2,P_3))
cat("E(X2) =",E)