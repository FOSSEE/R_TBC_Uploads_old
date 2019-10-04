#Ex15.6, Page 642
#Interval values may vary slightly.....

#Given data
averages<-c(4.51,4.55,4.59,4.705,4.72,4.745,4.76,4.795,4.835,4.90,4.915,4.93,4.99,5.005,5.08,5.09,5.13,5.285,5.30,5.375,5.655,5.67,5.695,5.85,5.865,5.94,6.235,6.80)

print(summary(averages))

#To display confidence intervals of the data
print(wilcox.test(averages,conf.int=TRUE,conf.level=0.95))