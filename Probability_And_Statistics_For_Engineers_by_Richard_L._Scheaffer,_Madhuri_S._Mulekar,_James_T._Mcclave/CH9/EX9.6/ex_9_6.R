# Determining Sample Size to Estimate Mean...

sigma =2
B = 0.1

cat("Thus, at least ", round((qnorm(0.975)*sigma/B)^2) ,"employees should be sampled to achieve the desired results. ")
