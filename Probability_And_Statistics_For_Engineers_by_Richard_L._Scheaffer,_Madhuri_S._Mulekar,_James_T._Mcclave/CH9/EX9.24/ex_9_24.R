n=45
mu=498
s=4
delta=0.90
alpha=1-0.95
cat("For these data, k=2.021")
k=2.021
cat(" We are 95% confident that 90% of the population resistances in the population lie between "
    ,mu- k*s,"-",mu+ k*s)
