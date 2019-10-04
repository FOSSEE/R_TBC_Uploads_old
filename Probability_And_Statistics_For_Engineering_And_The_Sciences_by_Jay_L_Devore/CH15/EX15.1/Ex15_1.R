#Ex15.1, Page 629

library(stats)

x<-c(494.6,510.8,487.5,493.2,502.6,485.0,495.9,498.2,501.6,497.3,492.0,504.3,499.2,493.5,505.8)
y<-x-500

#Performing Wilcoxon signed rank test using wilcox.test function
print(wilcox.test(y))