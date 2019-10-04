?stripchart()
data<-c(11,9,17,19,4,15)
mean(data)
median(data)
stripchart(data,method ="stack",
  at = c(0.1),
  cex=1,pch=20,
  xlim=c(0,20),
  las=1,
  main="Data",xlab = "Email - Request")
