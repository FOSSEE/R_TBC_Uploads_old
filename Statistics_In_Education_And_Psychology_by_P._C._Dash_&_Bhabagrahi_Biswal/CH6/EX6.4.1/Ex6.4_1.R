# Page.No 6.18 - 6.23

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
  c <- cf[row - 1]
  cf2 <- if(row - 1<= 0 ) {0}
  else { cf[row - 1] } # cumulative frequency class before percentile class
  n_2 <- max(cf)*p      # total observations multiplied with percentile
  
  unname(L + (n_2 - cf2)/f * h)
}


# The Problem 
frequency<-c(9,5,7,8,8,6,2,3,2)
colnames<-c("numbers")
rownames<-c("[9.5,14.5]"," (14.5,19.5]"," (19.5,24.5]","(24.5,29.5]"," (29.5,34.5]","(34.5,39.5]","(39.5,44.5]","(44.5,49.5]","(49.5,54.5]")
#The class intevals are changed to exclusive one by adding 0.5 to the upper limits and deducing 0.5 from the lower limits 
y<-matrix(frequency,nrow=length(frequency),dimnames=list(rownames,colnames))


p1=c(0.90,0.80,0.75,0.70,0.60,0.50,0.48,0.40,0.30,0.20)

p2=c(0.17,0.10)

Percentile_value1<-percentile(y[, "numbers"], rownames(y), sep=",", trim="cut",p1)

Percentile_value2<-percentile(y[, "numbers"], rownames(y), sep=",", trim="cut",p2)

Result1<- round(rbind(p1*100,Percentile_value1),digits = 3) # percentile values of above 20

Result2<- round(rbind(p2*100,Percentile_value2),digits = 3) # percentile values of below 20

print(Result1)

print(Result2)
