##Example 13.4.1 Pg.683
##Wilcoxon signed rank test

cardiac_out <- c(4.91,4.10,6.74,7.27,7.42,7.50,6.56,4.64,5.98,3.14,3.23,5.80,6.17,5.39,5.77)
wilcox.test(cardiac_out, alternative= "two.sided", conf.int=T)

#since pvalue>0.05, we conclude population mean may be 5.05

