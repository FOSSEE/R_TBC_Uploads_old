                                        # Page no. : 876-878

# Mann - Whitney - Wilcoxon - Test Eg - 2

account1 <- c(1:12)
account2 <- c(1:10)

balance1 <- c(1095, 955, 1200, 1195, 925, 950, 805, 945, 875, 1055, 1025, 975)
balance2 <- c(885, 850, 915, 950, 800, 750, 865, 1000, 1050, 935)

test <- wilcox.test(balance1, balance2, correct = F)
test

if(test$p.value >= 0.05)
{
  cat("We cannot reject null hypothesis")
} else
{
  cat("We can reject null hypothesis")
}