                                      # Page no. : 44 

# Cumulative Distributions

audit_time <- c("Less than or equal to 14", "Less than or equal to 19", "Less than or equal to 24",
                "Less than or equal to 29", "Less than or equal to 34")
frequency <- c(4,8,5,2,1)   # Refer to table no. 2.5 page no. 40
cumulative_freq <- cumsum(frequency)

DF <- data.frame(audit_time, frequency, cumulative_freq)

CRF <-  DF$cumulative_freq / sum(DF$frequency)   # Cumulative Relative Frequency

CPF <- CRF * 100   # Cumulative Percentage Frequency

DF <- cbind(DF, CRF, CPF)
View(DF)

breaks <- seq(9, 34, by = 5)
cumfreq0 <- c(0, DF$cumulative_freq)

DF2 <- data.frame(breaks, cumfreq0)

# Install Library if not installed

# install.packages("ggplot2")

# Import Library

library(ggplot2)

ggplot(DF2, aes(breaks, cumfreq0, group = 1)) + geom_point() + geom_line() + 
  xlim(c(0,35)) + labs(title = "Ogive For the Audit Time Data", x ="Audit Time (Days)",
     y ="Cumulative Frequency")
