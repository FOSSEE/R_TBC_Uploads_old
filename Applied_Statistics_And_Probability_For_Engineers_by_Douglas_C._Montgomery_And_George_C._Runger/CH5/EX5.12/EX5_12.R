#Machined Dimensions(Pg no. 166)

xmean = 10.5
xvar = 0.0025
xstd_dev = sqrt(xvar)
ymean = 3.2
yvar = 0.0036
ystd_dev = sqrt(yvar)

#P(10.4<X<10.6,3.15<Y<3.25)
zx_min = pnorm(10.4,xmean,xstd_dev,lower.tail = FALSE)
zx_max = pnorm(10.6,xmean,xstd_dev)

zy_min = pnorm(3.15,ymean,ystd_dev, lower.tail = FALSE)
zy_max = pnorm(3.25,ymean,ystd_dev)

p = zx_min*zx_max*zy_min*zy_max
cat("P(10.4<X<10.6,3.15<Y<3.25) =",round(p,digits = 1))

# The answer may slightly vary due to rounding off values