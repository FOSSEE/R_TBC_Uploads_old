                                     # Page no. : 171 - 174

# Conditional Probability

position <- c("Promoted", "Not Promoted")
gender <- c("Men","Women")
number1 <- c(288, 36)   # Promoted
number2 <- c(672, 204)  # Not Promoted

DF <- data.frame(position, gender, number1, number2)

table <- round(prop.table(DF[,3:4]), 2)
table <- as.matrix(table)
table

position <- c("Promoted", "Not Promoted")
men <- c(table[1,1][[1]], table[1,2][[1]])
women <- c(table[2,1][[1]], table[2,2][[1]])  

DF2 <- data.frame(position, men, women)
View(DF2)

columnSums <- apply(DF2[,2:3],2, sum)
rowSums <- apply(DF2[,2:3], 1, sum)

cat("Total Probability For having Men is", columnSums[1])
cat("Total Probability For having Women is",  columnSums[2])
cat("Total Probability For Promotion", rowSums[1])
cat("Total Probability For Not a Promotion", rowSums[2])

cond1 <- DF2$men[1]  / columnSums[1]

cat("Conditional Probability for Men and getting Promoted given the Probability
    of Total Men is",cond1)

cond2 <- DF2$women[1] / columnSums[2]

cat("Conditional Probability for Women and getting Promoted given the Probability
    of Total Women is",cond2)

