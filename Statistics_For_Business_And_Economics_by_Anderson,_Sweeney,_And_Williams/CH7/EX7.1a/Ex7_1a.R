                                           # Page no. : 274

# Sample Mean and Sample Standard Deviation

annual_salary <- c(49094.30,53263.90,49643.50,49894.90,47621.60,55924.00,49092.30,51404.40,50957.70,
                   55109.70,45922.60,57268.40,55688.80,51564.70,56188.20,51766.00,52541.30,44980.00,
                   51932.60,52973.00,45120.90,51753.00,54391.80,50164.20,52973.60,50241.30,52793.90,
                   50979.40,55860.90,57309.10)

program <- c("Yes","Yes","Yes","Yes","No","Yes","Yes","Yes","Yes","Yes","Yes","No","Yes","No","No","Yes",
           "No","Yes","Yes","Yes","Yes","Yes","No","No","No","No","No","Yes","Yes","No")

dataset <- data.frame(annual_salary, program)

sample_mean <- mean(dataset$annual_salary)
sample_sd <- sd(dataset$annual_salary)

cat("Sample mean of the data is", sample_mean)
cat("Sample satndard deviation is", sample_sd)

# Note that : Book SD is different from our SD

# Sample Proportion

n <- nrow(dataset)
x <- 19

sample_proportion <- x / n

cat("Sample Proportion is",sample_proportion)