                                        # Page no. : 204

# How are you doing?

# 2nd Question

m2 <- 500   # Mean of population 2
d <- .80   # Predicted effect size
sd <- 100   # Standard deviation 

m <- m2 + (d * sd)   # Predicted mean

cat("Predicted effect size is", round(m, 2))