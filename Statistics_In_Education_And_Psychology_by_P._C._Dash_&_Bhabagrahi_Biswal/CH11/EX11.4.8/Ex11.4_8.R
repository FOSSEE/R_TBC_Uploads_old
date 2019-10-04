#Page.no 11.11 - 11.12

R1 = c(20,10)
R2 = c(5,15) 
rows   = 2

#2*2 contingency table
table = matrix(c(R1, R2),
                nrow=rows,
                byrow=TRUE)

rownames(table) = c("Good Achievement", "Bad achievement")# Naming the rows and
colnames(table) = c("High", "Low")   #  columns is optional. 
table

chi_sq<-chisq.test(table,correct=FALSE)

chi_sq<-chi_sq$statistic

## Chi-squared table value @ 5% 
alpha <- 0.05   # 5% significance level
df <- nrow(table) - 1   # Degree of freedom

chi_sq_val <- round(qchisq(alpha,df,lower.tail = F), 2)   # Chi-square table value


cat("The calculated chi square value is ",chi_sq)

if(chi_sq > chi_sq_val)
{
  cat("Reject null hypothesis and observed Chi-square is significant")
} else
{
  cat("Cannot reject null hypothesis and there is no significance")
}

"so Interest has significantly affect the performance level of children"
