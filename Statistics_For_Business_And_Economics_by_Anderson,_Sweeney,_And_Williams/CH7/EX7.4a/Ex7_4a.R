                                         # Page no. : 290 

# Sampling Distribution of pbar 

population_proportion <- 0.60
n <- 30   
N <- 2500   

x <- n / N

if(x > 0.05)   # Condition to include finite population or not ( < 5%)
{
  standard_deviation <- sqrt((N-n)(N-1)) * sqrt((population_proportion * 
                                                   (1 - population_proportion)) / n)
} else{
  standard_deviation <- sqrt((population_proportion * (1 - population_proportion)) / n) 
}

cat("Standard deviation for sample proportion is",standard_deviation)
