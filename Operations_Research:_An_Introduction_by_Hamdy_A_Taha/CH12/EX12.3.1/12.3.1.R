##Chapter 12 : Deterministic Inventory Modelling
##Example 3-1 : Page 495

#input parametres
D=100
K=100
h=0.02
L=12
#optimal quantity
y=sqrt(2*K*D/h)

print(paste("EOQ =",y,"units"))
#cycle length
t=y/D
print(paste("Cycle length =",t,"days"))
#number of cycles
L0=L- floor(L/t)*t

print(paste("Reorder point =",L0*D,"units"))
print(paste("Daily inventory cost = $",(K*D/y)+h*y/2))