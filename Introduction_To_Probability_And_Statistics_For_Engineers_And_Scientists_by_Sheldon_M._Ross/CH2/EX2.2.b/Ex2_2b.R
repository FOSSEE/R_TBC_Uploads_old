slices<-c(42, 50, 32, 55, 9 ,12)
lbls<-c("Lung ", "Breast ", "Colon ", "Prostate ", "Melanoma ", "Bladder ")
pct <- round(slices/sum(slices)*100)
lbls <- paste(lbls, pct) # add percents to labels
lbls <- paste(lbls,"%",sep="") # ad % to labels 
pie(slices,labels = lbls, col=rainbow(length(lbls)),main="Pie Chart")