data<- matrix(c(94.8,65.9,56.4,118.1,76.0,65.1),ncol=3,byrow=TRUE)
colnames(data) <- c("Full Professor","Associate Professor","Assistant Professor")
rownames(data) <- c("public","private")
data <- as.table(data)
data
barplot(data, ylab="Average Salary ($ Thousands)", ylim=c(0,120), col=c("blue","grey"),
        legend = c("public","private"), beside=TRUE)