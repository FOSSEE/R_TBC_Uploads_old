                                      # Page no. : 88

# Dataset

graduate <- c(1,2,3,4,5,6,7,8,9,10,11,12)   
salary <- c(3450,3550,3650,3480,3355,3310,3490,3730,3540,3925,3520,3480)  


dataset <- data.frame(graduate, salary)

# Mean

mean_salary <- mean(dataset$salary)

cat("Mean monthly starting salary of 12 business school graduates is",mean_salary)


