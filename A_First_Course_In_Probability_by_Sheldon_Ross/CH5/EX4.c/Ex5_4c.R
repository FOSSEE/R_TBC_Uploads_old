cat("Grade A:", (1 - pnorm(1))*100, "%\n")
cat("Grade B:", (pnorm(1) - pnorm(0))*100, "%\n")
cat("Grade C:", (pnorm(0) - pnorm(-1))*100, "%\n")
cat("Grade D:", (pnorm(2) - pnorm(1))*100, "%\n")
cat("Grade E:", (pnorm(-2))*100, "%\n")