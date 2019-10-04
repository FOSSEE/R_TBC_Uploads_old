# Page.No 5.48

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
frequency<-c(2,3,1,4,2,1,2,4,3,2,7,4)
colnames<-c("numbers")
rownames<-c("[1.5,8.5]"," (8.5,15.5]"," (15.5,22.5]","(22.5,29.5]"," (29.5,36.5]","(36.5,43.5]",
            "(43.5,50.5]","(50.5,57.5]","(57.5,64.5]","(64.5,71.5]","(71.5,78.5]","(78.5,85.5]")
#The class intevals are changed to exclusive one by adding 0.5 to the upper limits and deducing 0.5 from the lower limits 
y<-matrix(frequency,nrow=length(frequency),dimnames=list(rownames,colnames))
md<-GroupedMedian(y[, "numbers"], rownames(y), sep=",", trim="cut")


### find the mean for grouped data
low_value<-1.5
high_value<-85.5
step_value<-7
X_breaks<-seq(low_value,high_value,step_value)
X_mid<-seq(low_value+step_value/2, high_value-step_value/2, step_value)
f<-c(2,3,1,4,2,1,2,4,3,2,7,4)
data<-rep(X_mid,f)
Mn<-mean(data)

## to find mode from mean and median 
Mode<-3*md-2*Mn
cat ("The mode is",Mode)

