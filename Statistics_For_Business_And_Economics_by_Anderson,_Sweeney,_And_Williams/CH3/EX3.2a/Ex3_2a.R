                                        # Page no. : 96-97

salary <- c(3450,3550,3650,3480,3355,3310,3490,3730,3540,3925,3520,3480) 

# Range

range <- range(salary)
diff <- range[2] - range[1]

cat("Range is",diff)

# Inter-Quartile Range

IQR <- IQR(salary)

cat("IQR is ",IQR)

# Note that : IQR value of Book is different.