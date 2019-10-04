x=36
n=100
#find 95%confidence interval
ratio=x/n
Z.alpha=1.96
Int1=ratio-Z.alpha*sqrt(ratio*(1-ratio)/n)
Int2=ratio+Z.alpha*sqrt(ratio*(1-ratio)/n)
cat(Int1," < p < ",Int2)