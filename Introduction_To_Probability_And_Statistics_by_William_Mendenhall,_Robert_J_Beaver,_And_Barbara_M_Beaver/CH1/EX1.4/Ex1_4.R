color<-c("Brown","Green","Brown","Blue","Red","Red","Green","Brown","Yellow","Orange","Green","Blue","Brown","Blue","Blue","Brown","Orange","Blue","Brown","Orange","Yellow")
color.frequency<-table(color)
barplot(color.frequency[order(color.frequency,decreasing = T)],ylab = "frequency",xlab = "color" )
#please zoom the plot to view the plot clearly
