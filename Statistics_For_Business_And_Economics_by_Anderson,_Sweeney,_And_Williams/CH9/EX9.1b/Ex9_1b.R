                                        # Page no. : 362 - 364

# Population Mean Sigma Known Two Tailed Test

sample_size <- 50
sample_mean <- 297.6
population_mean <- 295
significance_level <- 0.05    # alpha
population_sd <- 12

                                        # Page no. : 364

## Critical value approch

z_value <- (sample_mean - population_mean) / (population_sd / sqrt(sample_size))

z_half_alpha <- qnorm(1 - (significance_level/2))
critical_value_1 <- -z_half_alpha
critical_value_2 <- z_half_alpha

if(z_value >= critical_value_2 || z_value <= critical_value_1)
{
  cat("Since z-value", z_value ,"does not lie in the range", critical_value_1 ,"and", critical_value_2
      ,"therefore we reject the null hypothesis and accept the alternative hypothesis.")
} else{
  cat("Since z-value", z_value ,"lies in the range", critical_value_1 ,"and", critical_value_2
      ,"therefore we accept the null hypothesis.")
}

                                       # Page no. : 363 - 364

## P-value approch

area_under_curve <- 1 - pnorm(z_value)
pval <- 2 * area_under_curve   # P-value
if(pval > 0.05)
{
  cat("Since p-value ",pval ,"is greater than 0.05, therefore we will accept null hypothesis")
} else {
  cat("Since p-value ",pval ,"is less than 0.05, therefore we will reject null hypothesis and accept 
      alternative hypothesis.")
}