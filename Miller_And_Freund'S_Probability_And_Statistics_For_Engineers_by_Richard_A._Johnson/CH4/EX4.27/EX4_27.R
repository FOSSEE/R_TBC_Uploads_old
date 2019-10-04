#Multinomial Distribution
#(X1, . . . , Xk) ??? multinom(size = n, prob = pk×1)
x<-c(2,5,1)
prob<-c(0.3,0.5,0.2)
dmultinom(x, size = 8, prob, log = FALSE)