
Group1 <- c(5,17,12,10,4)
Group2 <- c(19,10,9,7,5)
Group3 <- c(25,15,12,9,8)
 
Combined_Groups <- data.frame(cbind(Group1, Group2, Group3)) # combines the data into a single data set.
Combined_Groups # shows spreadsheet like results
#summary(Combined_Groups)  # min, median, mean, max

Stacked_Groups <- stack(Combined_Groups)
Stacked_Groups #shows the table Stacked_Groups

Anova_Results <- aov(values ~ ind, data = Stacked_Groups) 
summary(Anova_Results) # shows Anova_Results


# answer given in book is wrong because sample varaince calcaulated for group 1 column in book is 33.7 which is wrong
# correct sample varaince is 28.3