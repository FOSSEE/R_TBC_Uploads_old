#Example 25 chapter 2 page no.85
X=c(0:7)
a=10     #for euation 10k^2 + 9k -1 = 0
b=9
c=-1
k1<-(-b + sqrt(b^2 - 4*a*c))/(2*a)
k2<-(-b - sqrt(b^2 - 4*a*c))/(2*a)
print(k1)    #selecting k1 as the value of k
k=k1
P_X = c(0,k,2*k,2*k,3*k,k*k,2*k*k,7*k*k+k)
cat("prob of 1.5<x<4.5 when prob of x>2",(P_X[4]+P_X[5])/(1-P_X[1]-P_X[2]-P_X[3]))

    