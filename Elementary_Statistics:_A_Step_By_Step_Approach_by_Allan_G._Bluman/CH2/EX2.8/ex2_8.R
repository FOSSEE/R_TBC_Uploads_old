#bar plot construction
amount<-c(728, 344, 141, 72)
barplot(amount, main="Expenditure of a first year college student", xlab="expenditure", ylab="amount", names.arg =c("electronics", "dorm decor", "clothing", "shoes"), border="green")
barplot(amount, main="Expenditure of a first year college student", xlab="expenditure", ylab="amount", names.arg =c("electronics", "dorm decor", "clothing", "shoes"), border="green", horiz=TRUE)
