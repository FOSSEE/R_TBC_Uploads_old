# Page.No 5.53

Lower_limits<-c(100,110,120,130,140,150,160)
Upper_limits<-c(109,119,129,139,149,159,169)
frequency<-c(10,12,13,18,6,7,4)
library("gds") # Package for grouped statistics
results<-gds(Lower_limits,Upper_limits,frequency)
cat("The mean is ",results$mean)
cat("The median is ",results$median)

GroupedMedian <- function(frequencies, intervals, sep = NULL, trim = NULL) {
  # If "sep" is specified, the function will try to create the 
  #   required "intervals" matrix. "trim" removes any unwanted 
  #   characters before attempting to convert the ranges to numeric.
  if (!is.null(sep)) {
    if (is.null(trim)) pattern <- ""
    else if (trim == "cut") pattern <- "\\[|\\]|\\(|\\)"
    else pattern <- trim
    intervals <- sapply(strsplit(gsub(pattern, "", intervals), sep), as.numeric)
  }
  
  Midpoints <- rowMeans(intervals)
  cf <- cumsum(frequencies)
  Midrow <- findInterval(max(cf)/2, cf) + 1
  L <- intervals[1, Midrow]      # lower class boundary of median class
  h <- diff(intervals[, Midrow]) # size of median class
  f <- frequencies[Midrow]       # frequency of median class
  cf2 <- cf[Midrow - 1]          # cumulative frequency class before median class
  n_2 <- max(cf)/2               # total observations divided by 2
  
  unname(L + (n_2 - cf2)/f * h)
}

# The Problem 
frequency<-c(10,12,13,18,06,07,04)
colnames<-c("numbers")
rownames<-c("[99.5,109.5]"," (109.5,119.5]"," (119.5,129.5]","(129.5,139.5]",
            "(139.5,149.5]","(149.5,159.5]","(159.5,169.5]")
#The class intevals are changed to exclusive one by adding 0.5 to the upper limits and deducing 0.5 from the lower limits 
y<-matrix(frequency,nrow=length(frequency),dimnames=list(rownames,colnames))
md<-GroupedMedian(y[, "numbers"], rownames(y), sep=",", trim="cut")


Mode <- 3*md-2*results$mean
cat("The mode is",Mode)
