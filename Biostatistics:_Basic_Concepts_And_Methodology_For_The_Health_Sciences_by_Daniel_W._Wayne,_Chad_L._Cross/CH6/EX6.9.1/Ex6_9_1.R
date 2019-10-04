##Example 6.9.1 Pg.196
##Chi square test

x <- c(9.7,12.3,11.2,5.1,24.8,14.8,17.7)
conf.level= 0.95
df = length(x) - 1
chilower = round(qchisq((1 - conf.level)/2, df),3)
chiupper = round(qchisq((1 - conf.level)/2, df, lower.tail = FALSE),3)
v = var(x)
c(df * v/chiupper, df * v/chilower)  #95% conf interval for variance
c(sqrt(df * v/chiupper), sqrt(df * v/chilower))  #95% conf interval for sd
