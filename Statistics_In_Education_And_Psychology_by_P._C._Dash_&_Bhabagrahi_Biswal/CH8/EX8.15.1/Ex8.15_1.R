#Page.No 8.60 - 8.61

library("psych") # attaching the function

t<-c(50,80,60,40) # vector of frequencies

Phi_coefficient<-phi(t,digits = 4)

cat("The phi coeffient is ",Phi_coefficient)
