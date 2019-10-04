#Variance and mean of group data
xi=c(225,265,305,345,385)
options(digits = 2)
fi=c(3,11,23,9,4)
n=sum(fi)
mean=weighted.mean(xi,fi)
var=(sum(xi^2*fi)-sum(xi*fi)^2/n)/(n-1)
sd=sqrt(var)
cat("mean: ",mean," var: ",var," sd: ",sd)

