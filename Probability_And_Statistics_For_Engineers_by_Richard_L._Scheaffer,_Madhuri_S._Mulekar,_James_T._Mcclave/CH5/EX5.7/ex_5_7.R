prob_marks <- c(0.1,0.2,0.4,0.2,0.1)
marks <- 0:4
E <-  weighted.mean(marks,prob_marks)

cat("Mean score is:" , E)

V <- sum(((marks-E)^2)*prob_marks)
cat("Standard deviation is ", sqrt(V))


