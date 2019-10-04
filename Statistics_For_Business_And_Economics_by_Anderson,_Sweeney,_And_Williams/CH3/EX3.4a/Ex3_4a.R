                                          # Page no. : 110

salary <- c(3450,3550,3650,3480,3355,3310,3490,3730,3540,3925,3520,3480) 

# Install Library if not installed

#install.packages("ggplot2")

# Import Library

library(ggplot2)

# Boxplot

ggplot(data.frame(salary), aes(x = "", y = salary)) + geom_boxplot(fill = "purple")+
  ggtitle("Boxplot for Salary") + ylab("Salary")
