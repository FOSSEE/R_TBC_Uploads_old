# median for interval data 
Median_calculate <- function(frequencies, intervals, sep = NULL, trim = NULL) {
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


mydataframe <- structure(list(Class_interval = c("16.25-18.75", "18.75-21.25", "21.25-23.75", 
                                  "23.75-26.25", "26.25-28.75", " 28.75-31.25", " 31.25-33.75", "33.75-36.25", 
                                  "36.25-38.75", " 38.75- 41.25","41.25- 43.75"), freq = c(2L, 7L, 7L, 14L, 
                                                                        17L, 24L, 11L, 11L, 3L, 3L,1L)), .Names = c("class_interval", "freq"), 
                  class = "data.frame", row.names = c(NA, -11L))
print(mydataframe)

Median_calculate(mydataframe$freq, mydataframe$class_interval, sep = "-")

