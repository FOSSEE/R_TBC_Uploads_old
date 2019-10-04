
# Chapter 10 
# Example 10.15 page no. 378 from the pdf..
# testing for several proportion..

defectives <- c(45,55,70)

nondefectives <- c(905,890,870)

# making a data frame of Variables..
shifts <- as.data.frame(rbind(defectives,nondefectives))

# Giving names to the columns..
names(shifts) <- c('Day','Evening','Night')

chisq.test(shifts)

cat("Since the p-value is",chisq.test(shifts)$p.value," grater than the significant value 0.025 we cannot reject null hypothesis but from the p-value calculated we also cannot say that the proportion of defectives is same ")
