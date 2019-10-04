# Statistics for Management and Economics by Gerald Keller
# Chapter 2: Graphical Descriptive Techniques I
# Example 2.1 on Pg 18 
# Work Status in the GSS 2008 Survey 

# Complete dataset of 2021 observations could not be found on the 
# website: https://www.cengage.com/cgi-wadsworth/course_products_wp.pl?fid=M20b&product_isbn_issn=9781285425450&template=nelson
# Partial data of 150 observations found in the book as given below:
data <-  c(1, 1, 1, 1, 1, 7, 7, 1, 1, 5, 1, 5, 7, 1, 1, 5, 7, 1, 5, 2, 5, 1, 5, 8, 1, 5, 7, 1, 4, 2, 7, 1, 2,
           1, 1, 2, 1, 7, 1, 7, 1, 2, 1, 1, 1, 1, 1, 6, 5, 1, 1, 1, 1, 1, 2, 5, 2, 7, 2, 7, 8, 1, 8, 1, 7, 1,
           6, 7, 6, 1, 5, 1, 2, 2, 4, 1, 1, 1, 1, 1, 6, 5, 5, 3, 2, 1, 1, 8 ,1 ,5, 1, 1, 1, 1, 5, 5, 1, 5, 4, 
           7, 1, 1, 1, 4, 5, 2, 5, 6, 7 ,7, 1, 4, 2, 1, 2, 6, 1, 1, 1, 1, 1, 1, 7, 4, 1, 1, 1, 7, 8, 1, 3, 1,
           1, 3, 1, 1, 1, 1, 1, 1, 2, 1, 5, 1, 1, 1, 1, 1, 2, 1)

# factor() function divides the dataset into its levels 
f <- factor(data) 

# levels() function used for renaming
levels(f) <- c('Working full-time', 'Working part-time', 'Temporary no work', 'laid off',
               'Retired', 'School', 'Keeping house', 'Other')

# table() function displays the frequency table
c <- table(f)
print(c) #gives frequencies 
rel_c <- paste(round(prop.table(c)*100,2), "%", sep="") #gives relative frequencies in %
cbind(c, rel_c) #Table showing both frequencies and relative frequencies

# barplot() function plots the bar graph using the frequency table
barplot(c, main="Work Status", las=0)

# for pie-chart
# pie() function plots the pie chart using the frequency table
pct <- round(c/sum(c)*100) #computing percentages
lbls <- paste(levels(f), pct) #add percents to labels 
lbls <- paste(lbls, "%", sep="") #add % to labels
pie(c, labels = lbls, main ="Pie Chart of Work Status")

#End