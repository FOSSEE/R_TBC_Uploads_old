given_value <- 0.2
required_probability <- punif(given_value, max = 0.5, min = -0.5) - punif(- given_value, max = 0.5, min = -0.5)
cat("required probability is",required_probability)
