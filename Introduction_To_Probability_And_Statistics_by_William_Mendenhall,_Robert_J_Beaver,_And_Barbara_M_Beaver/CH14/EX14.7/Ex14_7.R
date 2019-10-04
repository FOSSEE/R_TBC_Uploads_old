voter <- matrix(c(76,53,59,48,124,147,141,152),ncol = 4, byrow = TRUE)
colnames(voter) <- c("1","2","3","4")
rownames(voter) <- c("Favor A","Do Not Favor A")
voter <- as.table(voter)
voter
chisq.test(voter,correct = F)
cat("X-squared value is too large so null hypothesis is rejected")