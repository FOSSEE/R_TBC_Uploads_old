                                  # Page no. : 873 - 875

# Mann - Whitney - Wilcoxon - Test

college <- c(1:4)
m1 <- c(15,3,23,8)

high <- c(1:5)
m2 <- c(18,20,32,9,25)

test <- wilcox.test(m1, m2, correct = F)
test

if(test$p.value >= 0.05)
{
  cat("We cannot reject null hypothesis")
} else
{
  cat("We can reject null hypothesis")
}