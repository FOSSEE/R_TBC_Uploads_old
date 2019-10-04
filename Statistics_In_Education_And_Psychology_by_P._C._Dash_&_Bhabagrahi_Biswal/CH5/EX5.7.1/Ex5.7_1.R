#Page.No 5.51 - 5.53

Lower_limits<-c(10,15,20,25,30,35,40,45)
Upper_limits<-c(14,19,24,29,34,39,44,49)
frequency<-c(3,6,5,9,8,8,2,8)
library("gds") # Package for grouped statistics
results<-gds(Lower_limits,Upper_limits,frequency)
cat("The mean is ",results$mean)
cat("The median is ",results$median)
cat("The mode is ",results$mode)
# The answers may slightly vary due to roundingoff values



#### To get the Precise answers you can try the following method
# A function created to find the median of a grouped data 
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
frequency<-c(3,6,5,9,8,8,2,8)
colnames<-c("numbers")
rownames<-c("[9.5,14.5]"," (14.5,19.5]"," (19.5,24.5]","(24.5,29.5]",
            "(29.5,34.5]","(34.5,39.5]","(39.5,44.5]","(44.5,49.5]")
#The class intevals are changed to exclusive one by adding 0.5 to the upper limits and deducing 0.5 from the lower limits 
y<-matrix(frequency,nrow=length(frequency),dimnames=list(rownames,colnames))
md<-GroupedMedian(y[, "numbers"], rownames(y), sep=",", trim="cut")


### find the mean for grouped data
low_value<-9.5
high_value<-49.5
step_value<-5
X_breaks<-seq(low_value,high_value,step_value)
X_mid<-seq(low_value+step_value/2, high_value-step_value/2, step_value)
f<-c(3,6,5,9,8,8,2,8)
data<-rep(X_mid,f)
Mn<-mean(data)
Mn

## to find mode from mean and median 
Mode<-3*md-2*Mn
cat ("The mode is",Mode)
cat("The median is",md)
cat("The mean is",Mn)
