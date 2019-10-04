# Statistics for Management and Economics by Gerald Keller
# Chapter 2: Graphical Descriptive Techniques I
# Example 2.3 on Pg 26
# Per Capita Beer Consumption (10 Selected Countries) 


Country <- c("Australia","Austria","Belgium","Canada","Croatia","Czech Republic","Denmark","Finland","Germany",
             "Hungary","Ireland","Luxembourg","Netherlands","New Zealand","Poland","Portugal","Slovakia","Spain",
             "UK","USA")

Beer_consumption <- c(119.2,106.3,93,68.3,81.2,138.1,89.9,85,147.8,75.3, 138.3,84.4, 79, 77, 69.1, 59.6,
                      84.1, 83.8, 96.8, 81.6)

#bar chart for beer consumption
barchart <- barplot(Beer_consumption, names.arg = Country, ylim=c(0,160),axisnames = FALSE,
                    main=" Per Capita Beer Consumption (10 Selected Countries)")
text(x = barchart, y = Beer_consumption, label = Beer_consumption, pos = 3, cex = 0.9, col = "red")
text(x = barchart, y = par()$usr[3], label = Country ,srt = 45, adj = c(1.1,1.1), xpd = TRUE) #rotated x-axisnames

#End

