mpg<-c(12, 17, 12, 14, 16, 18, 16, 18, 12, 16, 17, 15, 15, 16, 12, 15, 16, 16, 12, 14, 15, 12, 15, 15, 19, 13, 16, 18, 16, 14)
H = max(mpg)
L = min(mpg)
cat("Maximum value is: ", H)
cat("\n")
cat("Minimum value is: ", L)
cat("\n")
Range = H - L
cat("Range is: ", Range)
cat("\n")
breaks= seq(12, 20, by=1)
mpg.div=cut(mpg, breaks, right=FALSE)
mpg.freq=table(mpg.div)
table<-data.frame(mpg.freq)
table
#for cumulative frequency
mpg.cumfreq = cumsum(mpg.freq)
tbl<-data.frame(mpg.cumfreq)
tbl
