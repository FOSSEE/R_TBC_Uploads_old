#Page.No 8.61-8.62

library("psych") # attaching the function

t<-c(50,40,30,15) # vector of frequencies

Phi_coefficient<-phi(t,digits = 4)

cat("The phi coeffient is ",Phi_coefficient,"Low negative correlation")
