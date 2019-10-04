E1 =c(14,10)
E2 =c(14,11)
E3 =c(12,11)
E4 =c(11,12)
W1 =c(4,5)
W2 =c(4,5)
W3 =c(3,6)
W4 =c(5,6)

r=c(E1,E2,E3,E4,W1,W2,W3,W4)
r
f1 = c("X", "Y")         # 1st factor levels 
f2 = c("Dry", "Damp")    # 2nd factor levels 
k1 = length(f1)          # number of 1st factors 
k2 = length(f2)          # number of 2nd factors 
n = 4                    # observations per treatment

A = gl(k1, 1, n*k1*k2, factor(f1)) 
A

B = gl(k2, n*k1, n*k1*k2, factor(f2)) 
B 

av = aov(r ~ A * B)  # include interaction

summary(av) 

