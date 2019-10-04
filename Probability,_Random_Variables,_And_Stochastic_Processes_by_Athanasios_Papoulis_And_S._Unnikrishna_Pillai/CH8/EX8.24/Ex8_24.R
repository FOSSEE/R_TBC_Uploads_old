#page no. 362
#example 8-24

k=c(55,43,44,61,40,57)         #(given)
np0=50        #(given)
q=sum(((k-np0)^2)/np0)

x=qchisq(0.95,5)       #qchisq() is the function used to calculate Chi-square percentile value in R

cat("Since (X0.95(5))^2 =",x,">",q," We accept the fair-die hypothesis")
