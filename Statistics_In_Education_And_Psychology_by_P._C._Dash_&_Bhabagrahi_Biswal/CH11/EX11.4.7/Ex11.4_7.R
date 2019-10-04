# Page no. : 11.10 - 11.11

condition <- c("First","Second","Third")
matrix <- matrix(c(15,25,10,20,25,5),2,3,byrow = TRUE)
expected<-c((sum(matrix[,1])*50)/100,(sum(matrix[,2])*50)/100,
          (sum(matrix[,3])*50)/100,(sum(matrix[,1])*50)/100,
          (sum(matrix[,2])*50)/100,(sum(matrix[,3])*50)/100)
expected
observed<-c(15,25,10,20,25,5)
DF <- data.frame(condition, observed, expected)
View(DF)

alpha <- 0.05   # 5% significance level
df <- nrow(DF) - 1   # Degree of freedom

chi_sq_val <- round(qchisq(alpha,df,lower.tail = F), 2)   # Chi-square value

diff <- DF$observed - DF$expected   # Difference
diff_sq <- diff ** 2   # Difference squared
ans <- round(diff_sq / DF$expected, 2)   # Difference squared weighted by expected frequency

chi_sq <- sum(ans)   # Chi-square 

cat("Value of chi-square is", chi_sq)  


if(chi_sq > chi_sq_val)
  {
    cat("Reject null hypothesis and it is significant")
  } else
  {
    cat("Cannot reject null hypothesis and no significance")
  }

"Opinion of rural and Urban population differ significantly"
