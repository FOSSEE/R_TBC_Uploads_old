#page no. 357
#Function used:with(),mean(),readLines(),gsub()


table_data <- "(value) (frequency)
(14.5,15.5] 5
(16.5,17.5] 8
(18.5,19.5] 16
(20.5,21.5] 12
(22.5,23.5] 6
(24.5,25.5] 3"
L <- readLines(textConnection(table_data))#read line from connection
DF <- read.table(text = gsub("[^0-9.]", " ", L), skip = 1, as.is = TRUE)#gsub replaces all occurrences

x <- with(DF, rep((V1 + V2)/2, V3))#computing the intermediate values

mean_result=mean(x)
print(mean_result)

median_result=median(x)
print(median_result)

y <- table(x)
mode_result = names(y)[which(y==max(y))]
print(mode_result)

hist(x)
abline(v = mean_result,
       col = "royalblue",
       lwd = 2)

abline(v = median_result,
       col = "red",
       lwd = 2)

abline(v = mode_result,
       col = "orange",
       lwd = 2)
