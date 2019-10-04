                                        # Page no. : 418 - 419

# Hypothesis Tests About Difference between two Means

x <- c(300, 280, 344, 385, 372, 360, 288, 321, 376, 290, 301, 283)
y <- c(274, 220, 308, 336, 198, 300, 315, 258, 318, 310, 332, 263)

DF <- data.frame(x,y)

test <- t.test(DF$x, DF$y, paired = F, alternative = "greater")
test

# Upper Tail Test

if(test$p.value <= 0.05)   # 95% Confidence Level
{
  cat("Since P-Value",test$p.value,"is less than or equal to 0.05 therefore we can reject
      Null Hypothesis")
} else {
  cat("Since P-Value",test$p.value,"is more than 0.05 therefore we cannot reject Null Hypothesis")
}
