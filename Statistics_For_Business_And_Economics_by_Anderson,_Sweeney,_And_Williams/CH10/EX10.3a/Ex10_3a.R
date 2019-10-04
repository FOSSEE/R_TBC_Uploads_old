                                      # Page no. : 424 - 425

# Inference About the Difference Between Two Population Means Matched samples

workers <- c(1,2,3,4,5,6)
method_1 <- c(6.0,5.0,7.0,6.2,6.0,6.4)
method_2 <- c(5.4,5.2,6.5,5.9,6.0,5.8)
diff <- method_1 - method_2

dataFrame <- data.frame(workers, method_1, method_2, diff)

test <- t.test(dataFrame$method_1, dataFrame$method_2, paired = T)
test

# Two Tail Test

if(test$p.value <= 0.05)
{
  cat("Since P-Value",test$p.value,"is less than or equal to 0.05 therefore we can 
      reject Null Hypothesis")
} else {
  cat("Since P-Value",test$p.value,"is more than 0.05 therefore we cannot reject Null Hypothesis")
}

# Interval Estimate

IE1 <- test$conf.int[1]
IE2 <- test$conf.int[2]

cat("The interval estimation for the given information at 95% confidence level is ",IE1 ,"to",
    IE2)