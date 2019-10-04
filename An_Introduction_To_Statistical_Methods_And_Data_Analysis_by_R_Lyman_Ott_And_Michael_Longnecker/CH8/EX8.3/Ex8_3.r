M=c(62,60,60,25,24,23,20,13,12,6)
C=c(62,62,24,24,22,20,19,10,8,8)
P=c(37,31,15,15,14,14,14,5,3,2)
 
Group1=abs(M-median(M))
Group2=abs(C-median(C))
Group3=abs(P-median(P))

Combined_Groups <- data.frame(cbind(Group1, Group2, Group3)) # combines the data into a single data set.
Combined_Groups # shows spreadsheet like results
#summary(Combined_Groups)  # min, median, mean, max

Stacked_Groups <- stack(Combined_Groups)
Stacked_Groups #shows the table Stacked_Groups

Anova_Results <- aov(values ~ ind, data = Stacked_Groups) 
summary(Anova_Results) # shows Anova_Results
