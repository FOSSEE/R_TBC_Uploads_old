online <- c(32,37,35,28,41,44,35,31,34)
classroom <- c(35,31,29,25,34,40,27,32,31)
alpha <- 0.05
df <- length(online) + length(classroom) - 2
stem(online)
stem(classroom)
cat("stem and leaf plot of the data show at least a mounding pattern so the assumption of normality is not unreasonable.")
critical_value <- round((qt(p = 1 -alpha,df,lower.tail = T)),3)
cat("critical value is",critical_value)
t.test(online,classroom,alternative = "greater") 
t <- t.test(online,classroom,alternative = "greater")$statistic
if(t > critical_value){
  print("reject the null hypothesis")
}else{
print("cannot reject the null hypothesis so there is insufficient evidence to indicate that the online course grades are higher than the conventional course grades at the 5 % level of significance.")
  }








