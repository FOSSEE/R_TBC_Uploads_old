#Ex7.15, Page 296
#Answers may slightly vary due to rounding off of values

data<-c(1470,1510,1690,1740,1900,2000,2030,2100,2190,
          2200,2290,2380,2390,2480,2500,2580,2700)

interval<-  function(data,conf.level=0.95){
  df<-length(data)-1
  l<-qchisq((1 - conf.level)/2, df)
  r<-qchisq((1 - conf.level)/2, df, lower.tail = FALSE)
  v<-var(data)
  c(df* v/r,df*v/l)
}
print(paste("Confidence interval for variance of normal population:"))
print(interval(data))
