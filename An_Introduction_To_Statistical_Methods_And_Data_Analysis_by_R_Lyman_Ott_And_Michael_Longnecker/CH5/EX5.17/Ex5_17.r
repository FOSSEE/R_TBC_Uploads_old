confidence_interval <- function(vector, interval) {
  # Standard deviation of sample
  vec_sd <- sd(vector)
  # Sample size
  n <- length(vector)
  # Mean of sample
  vec_mean <- mean(vector)
  # Error according to t distribution
  error <- qt((interval + 1)/2, df = n - 1) * vec_sd / sqrt(n)
  # Confidence interval as a vector
  ans <- c("lower" = vec_mean - error, "upper" = vec_mean + error)
  return(ans)
}
vector <- c(2.7, 2.4, 1.9, 2.6, 2.4, 1.9, 2.3,
            2.2, 2.5 ,2.3 ,1.8, 2.5, 2.0 ,2.2 )
confidence_interval(vector, 0.95)
 