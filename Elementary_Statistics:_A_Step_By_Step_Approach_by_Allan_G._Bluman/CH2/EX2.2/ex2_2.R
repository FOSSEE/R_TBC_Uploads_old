mpg<-c(112,110,107,116,120,100,118,112,108,113,127,117,114,110,120,120,116,115,121,117,134,118,118,113,105,118,122,117,120,110,105,114,118,119,118,110,114,122,111,112,109,105,106,104,114,112,109,110,111,114)
H = max(mpg)
L = min(mpg)
cat("Maximum value is: ", H)
cat("Minimum value is: ", L)
Range = H - L
cat("Range is: ", Range)
cat("\n")
breaks= seq(99.5,134.5, by=5)
mpg.div=cut(mpg, breaks, right=TRUE)
mpg.freq=table(mpg.div)
table<-data.frame(mpg.freq)
table
