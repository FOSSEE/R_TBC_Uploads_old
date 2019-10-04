#page no. 363
#example 8-25

ki=c(168,68,131,33)
poi=c(0.45,0.15,0.3,0.1)

q=sum(((ki-400*poi)^2)/(400*poi))

x=qchisq(0.95,3)       #qchisq() is the function used to calculate Chi-square percentile value in R

cat("Since (X0.95(3))^2 =",x,">",q," We accept the indepndence hypothesis")