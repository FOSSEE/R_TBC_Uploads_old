online <- c(32,37,35,28,41,44,35,31,34)
classroom <- c(35,31,29,25,34,40,27,32,31)
t.test(online,classroom,alternative = "greater")
lower <- t.test(online,classroom,alternative = "greater")$conf.int[1]
cat("lower confidence bound is",lower)
cat("since the difference of equal means is included in the confidence interval so it is possible that two means are equal so there is insufficient evidence to indicate that the online average is higher than the classroom average.")
#the results may slightly vary due to rounding off values in textbook. 
