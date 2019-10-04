#page no. 364
#example 8-26

ki=c(43,56,42,38,59,61,41,57,46,57)     #(given)
m=500
poi=0.1

q=sum(((ki-m*poi)^2)/(m*poi))

x=qchisq(0.95,9)       #qchisq() is the function used to calculate Chi-square percentile value in R

cat("Since (X0.95(9))^2 =",x,">",q," We accept the uniformaity hypothesis")