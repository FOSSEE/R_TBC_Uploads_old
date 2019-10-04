# using chi-sq distribution

# given , variance =100 , n=25

var =100
n=25

#a
#P(S^2 > 50) 
a <- (n-1)*50/var
cat("approximate probability = ", pchisq(a,df=n-1,lower.tail = F))

#b
#P(S^2 > 150)
b <- (n-1)*150/var
cat("approximate probability = ", pchisq(b,df=n-1,lower.tail = F))

#c
cat("E(S^2) = ", var)
cat("V(S^2) = ", 2*var*var/(n-1))
