# Chapter 1
# Example 1.3 page no.9 from the pdf..
#To find the plot for the Corrosion data in example 1.3
# package used "ggplot2" if not installed can be done using install.packages("ggplot2")


library(ggplot2)    # library for making visuals

humidity <- c(20,80,20,80)

average_corrosion <- c(975,350,1750,1550)

coating <- c("Uncoated","Uncoated","Chemical corrosion","Chemical corrosion")

a <- data.frame(coating,humidity,average_corrosion)   #making it a dataframe

# final PLOT..
ggplot(data= a, aes(x= humidity,y= average_corrosion,colour= coating))+geom_line() + geom_point() + xlab("Humidity(in %)")+ ggtitle("Corrosion Results for Example 1.3")

