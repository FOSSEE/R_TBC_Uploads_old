                                       # Page no. : 480 - 482

# Tests of Independence

gender <- c("Male", "Female")
light <- c(20,30)
regular <- c(40,30)
dark <- c(20,10)
total <- c(80,70)

DF <- data.frame(gender, light, regular, dark, total)

test <- chisq.test(DF[,2:4])
test

# Upper Tail Test

if(test$p.value <= 0.05)
{
  cat("Since pval",test$p.value,"is less than or equal to 0.05 therefore we can reject 
      Null Hypothesis")
} else{
  cat("Since pval",test$p.value,"is greater than 0.05 therefore we cannot reject Null 
      Hypothesis")
}


