                                         # Page no. : 90-91

salary <- c(3450,3550,3650,3480,3355,3310,3490,3730,3540,3925,3520,3480)  

# 85th and 50th Percentiles

solution <- quantile(salary, probs = c(0.85, 0.5))

cat("Value for 85th and 50th percentile are ", solution[1], ",", solution[2])

# Note that: 85th percentile value is different from the book


# 25th, 50th, 75th Percentiles (First, Second, Third Quartiles)

values <- quantile(salary, probs = c(0.25, 0.5, 0.75))

cat("Value for first, second, third quartiles are ", values[1], ",", values[2], ",", values[3] )

# Note that: First and Second Quartile values are different from the book
