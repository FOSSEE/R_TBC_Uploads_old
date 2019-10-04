#values are referred to example 10.5 in textbook
online <-c (32,37,35,28,41,44,35,31,34)           
classroom <-c (35,31,29,25,34,40,27,32,31)
p_value <- t.test(online,classroom,alternative = "greater")$p.value
cat("p-value =",p_value,"is geater than 0.05,most researchers would report the result as not significant.")
