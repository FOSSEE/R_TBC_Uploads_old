
Group1 <- c(96,79,91,85,83,91,82,87)
Group2 <- c(77,76,74,73,78,71,80)
Group3 <- c(66,73,69,66,77,73,71,70,74)
 

cols <- list(m=Group1, y=Group2,z=Group3)
as.data.frame(lapply(cols, `length<-`, max(sapply(cols, length)))) 
cols
Stacked_Groups <- stack(cols)
Stacked_Groups #shows the table Stacked_Groups

Anova_Results <- aov(values ~ ind, data = Stacked_Groups) 
summary(Anova_Results) # shows Anova_Results

