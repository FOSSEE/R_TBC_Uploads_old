
# given probability of defective fuse =0.10

# a) 
cat("Probability exactly one fuse in the sample of four is defective", dbinom(1,4,prob = 0.10))

# b)
# Probability atleast one is defective P(X>=1) = 1- P(X=0)
none_defective <- dbinom(0,4,prob = 0.10)
cat("Proability that atleast one bulb is defective :" , 1- none_defective)

# c)
n=4
p=0.1
E =n*p
V =n*p*(1-p)

E_Y_sq = V+ E^2
cat("E(C) =", 3*E_Y_sq)
cat(" we could expect to pay an average of $",3*E_Y_sq*10, "in repair costs for each shipment of four fuses. ")
