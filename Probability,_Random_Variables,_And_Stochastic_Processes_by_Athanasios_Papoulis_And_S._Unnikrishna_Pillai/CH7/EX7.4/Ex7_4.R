#page no. 247-248
#example 7-4

x1=98.6
x2=98.8
x3=98.9
sigma1=0.20
sigma2=0.25
sigma3=0.28

E=(x1/sigma1^2 + x2/sigma2^2 + x3/sigma3^2)/(1/sigma1^2 + 1/sigma2^2 + 1/sigma3^2)

cat("estimate E obtained from (7-17) comes out to be ",E)