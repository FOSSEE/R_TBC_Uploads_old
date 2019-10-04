tire_A <- c(10.6,9.8,12.3,9.7,8.8)
tire_B <- c(10.2,9.4,11.8,9.1,8.3)
t.test(tire_A,tire_B, paired = TRUE, alternative = "two.sided")



