# Page.No 6.5 - 6.8

## Function to find percentile 
percentile <- function(frequencies, intervals, sep = NULL, trim = NULL,p) {
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
  row <- findInterval(max(cf)*p, cf) + 1
  L <- intervals[1, row]      # lower class boundary of percentile class
  h <- diff(intervals[, row]) # size of percentile class
  f <- frequencies[row]       # frequency of percentile class
  cf2 <- cf[row - 1]          # cumulative frequency class before percentile class
  n_2 <- max(cf)*p      # total observations multiplied with percentile
  
  unname(L + (n_2 - cf2)/f * h)
}

# The given Problem 
frequency<-c(2,3,4,5,3,2,2,3)
colnames<-c("numbers")
rownames<-c("[9.5,14.5]"," (14.5,19.5]"," (19.5,24.5]","(24.5,29.5]"," (29.5,34.5]","(34.5,39.5]","(39.5,44.5]","(44.5,49.5]")
#The class intevals are changed to exclusive one by adding 0.5 to the upper limits and deducing 0.5 from the lower limits 

y<-matrix(frequency,nrow=length(frequency),dimnames=list(rownames,colnames))

p=c(0.15,0.25,0.50,0.65,0.75,0.80,0.85)

Percentile_value <-percentile(y[, "numbers"], rownames(y), sep=",", trim="cut",p)

Result<- round(rbind(p*100,Percentile_value),digits = 3)

print(Result)
