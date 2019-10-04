#quantile and percentile
data<-c(136,143,147,151,158,160,
        161,163,165,167,173,174,
        181,181,185,188,190,205)
options(digits = 1)
data2=quantile(data,c(.25,.5,.75))  
Q1=data2[1]
Q2=data2[2]
Q3=data2[3]
percentile=data[ceiling(0.1*18)]
cat("first quartile is",Q1)
cat("second quartile is",Q2)
cat("third quartile is",Q3)
cat("10% percentile  is",percentile)
