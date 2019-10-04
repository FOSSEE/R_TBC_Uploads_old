                                            # Page no. : 104

# Z-score

students <- c(46,54,42,46,32)

deviation <- students - mean(students)

sample_variance <- var(students)

dataset <- data.frame(students,deviation)

z <- c()

for(i in 1:length(dataset$students)){
  z[i] <- deviation[i]/sqrt(sample_variance)
}

dataset <- cbind(dataset, zScore = z)

View(dataset)