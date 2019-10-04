data<-c(340,300,520,340,320,290,260,330)
boxplot(data,horizontal = TRUE)
summary(data)
cat("q1 =",quantile(data,0.25))
cat("m =",quantile(data,0.50))
cat("q3 =",quantile(data,0.75))
IQR(data)
boxplot.stats(data)
#outlier is 520
#the answers provided in the textbook is wrong
