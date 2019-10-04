defect_free_prob <-0.75
cat("prob of defected item ", 1- defect_free_prob)
defected <- 1- defect_free_prob
shaft <- 0.20
bushing <- 0.10
both_defect_prob <- shaft + bushing -defected
cat("prob of only shaft defect is ", shaft - both_defect_prob)