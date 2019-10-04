visits <- c(6,4,6,5,3,7,6,5,5,5,1,4,6,5,7,5,6,3,7,5,6,8,4,6,5)
h<-hist(visits, plot=F)
h$counts <- h$counts / sum(h$counts)
plot(h, freq=TRUE, ylab="Relative Frequency")

