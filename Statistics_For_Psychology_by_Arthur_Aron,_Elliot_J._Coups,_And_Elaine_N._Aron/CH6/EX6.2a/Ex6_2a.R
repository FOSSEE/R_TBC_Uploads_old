                                       # Page no. : 197

# Determining power from predicted effect size

m2 <- 200   # Mean of population 2
d <- .20   # Predicted effect size
sd <- 48   # Standard deviation 

m <- m2 + (d * sd)   # Predicted mean

cat("Predicted effect size is", round(m, 2))

d <- .50   # Predicted effect size

m <- m2 + (d * sd)   # Predicted mean

cat("Predicted effect size is", round(m, 2))