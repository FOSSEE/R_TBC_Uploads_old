shift1 <- c(15,21,45,13)
shift2 <- c(26,31,34,5)
shift3 <- c(33,17,49,20)
data <- data.frame(shift1, shift2, shift3)
data
chisq.test(data)
p_value <- chisq.test(data)$p.value
cat(p_value < 0.05)
cat("since p-value is less than 0.005 so null hypothesis can be rejected and there is sufficient evidene that the proportion of defect types vary shift to shift")
#the answers may slightly vary due to rounding off values 