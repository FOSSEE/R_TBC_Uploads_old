# LASPEYRES PRICE INDEX and PAASCHE PRICE INDEX :
year <- c(2008,2009)
p.Syrings <- c(6.70,6.95)
q.Syrings <- c(150,135)
p.Cotton <- c(1.35,1.45)
q.Cotton <- c(60,65)
p.Patient <- c(5.10,6.25)
q.Patient <- c(8,12)
p.ChildrenTylenol <- c(4.50,4.95)
q.ChildrenTylenol <- c(25,30)
p.Computerpaper <- c(11.95,13.20)
q.Computerpaper <- c(6,8)
p.Thermometer <- c(7.90,9.00)
q.Thermometer <- c(4,2)

data <- data.frame(year,p.Syrings,q.Syrings,p.Cotton,q.Cotton,p.Patient,q.Patient,
                   p.ChildrenTylenol,q.ChildrenTylenol,p.Computerpaper,q.Computerpaper,
                   p.Thermometer,q.Thermometer)
data

# Unweighted Aggregate Index for 2009 :
p_2009 <- sum(p.Syrings[2],p.Cotton[2],p.Patient[2],p.ChildrenTylenol[2],p.Computerpaper[2],
         p.Thermometer[2])
p_2008 <- sum(p.Syrings[1],p.Cotton[1],p.Patient[1],p.ChildrenTylenol[1],p.Computerpaper[1],
              p.Thermometer[1])
I = (p_2009/p_2008)*100
I

# Laspeyres Price Indices
# install.packages("micEcon")
# install.packages("micEconIndex")
library(micEconIndex)
library(micEcon)
a <- priceIndex(c("p.Syrings","p.Cotton","p.Patient","p.ChildrenTylenol","p.Computerpaper",
             "p.Thermometer"), c("q.Syrings","q.Cotton","q.Patient","q.ChildrenTylenol",
                                 "q.Computerpaper","q.Thermometer"),1,data)
a
I_2009_Laspeyres <- a[2]*100
I_2009_Laspeyres

# Paasche Price Indices
b <- priceIndex(c("p.Syrings","p.Cotton","p.Patient","p.ChildrenTylenol","p.Computerpaper",
             "p.Thermometer"), c("q.Syrings","q.Cotton","q.Patient","q.ChildrenTylenol",
                                 "q.Computerpaper","q.Thermometer"),1,data,"Paasche")
b
I_2009_Passache <- b[2]*100
I_2009_Passache





