shaded_area <- 0.95
A1 <- (1 - shaded_area) / 2
cumulative_Area_left_of_z0 <- shaded_area + A1
z_value <- round(qnorm(cumulative_Area_left_of_z0),2)
cat("the required z value is",z_value)