weights <- c(0.46,0.61,0.52,0.48,0.57,0.54)
t.test(weights, mu = 0.5, alternative = "greater", conf.level = 0.95)
cat("the range of possible values of mean is both greater and smaller than 0.5 so there is no sufficient evidence and our test fails.")
